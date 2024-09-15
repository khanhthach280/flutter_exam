import 'dart:convert';
import 'package:flutter_application/domain/model/users_respond/user_response.dart';
import 'package:flutter_application/domain/model/user_detail_respond/user_detail_response.dart';
import 'package:flutter_application/domain/repositories/implement.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'user_repository_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('UserRepository Test', () {
    late UserRepository userRepository;
    late MockClient mockHttpClient;

    setUp(() {
      userRepository = UserRepository();
      mockHttpClient = MockClient();
    });

    // Test cho API fetchUsers
    test('fetchUsers returns UserResponse if the http call completes successfully', () async {
      final mockResponse = {
        "items": [
          {
            "badge_counts": {
              "bronze": 3,
              "silver": 2,
              "gold": 1
            },
            "account_id": 123,
            "is_employee": false,
            "last_modified_date": 1626263462,
            "last_access_date": 1626263462,
            "reputation_change_year": 100,
            "reputation_change_quarter": 20,
            "reputation_change_month": 10,
            "reputation_change_week": 5,
            "reputation_change_day": 1,
            "reputation": 1482202,
            "creation_date": 1626263462,
            "user_type": "registered",
            "user_id": 1,
            "accept_rate": 100,
            "location": "Hanoi, Vietnam",
            "website_url": "https://example.com",
            "link": "https://stackoverflow.com/users/1",
            "profile_image": "https://www.example.com/avatar.jpg",
            "display_name": "John Doe"
          }
        ],
        "has_more": false,
        "quota_max": 10000,
        "quota_remaining": 9999
      };

      // Mock the API call
      when(mockHttpClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response(json.encode(mockResponse), 200));

      // Gọi API
      final result = await userRepository.fetchUsers(page: 1, pageSize: 10);

      // Kiểm tra kết quả
      expect(result, isA<UserResponse>());
      expect(result.items.first.display_name, 'Jon Skeet');
      expect(result.items.first.reputation, 1482202);
    });

    test('fetchUsers throws an exception if the http call completes with an error', () async {
      // Mock lỗi khi gọi API
      when(mockHttpClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      // Kiểm tra exception
      expect(() async => await userRepository.fetchUsers(page: 1, pageSize: 10),
          throwsException);
    });

    // Test cho API fetchUserReputationHistory
    test('fetchUserReputationHistory returns UserDetailResponse if the http call completes successfully', () async {
      final mockResponse = {
        "items": [
          {
            "reputation_history_type": "post_upvoted",
            "reputation_change": 10,
            "post_id": 12345,
            "creation_date": 1626263462,
            "user_id": 1
          }
        ],
        "has_more": false,
        "quota_max": 10000,
        "quota_remaining": 9999
      };

      // Mock API call
      when(mockHttpClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response(json.encode(mockResponse), 200));

      // Gọi API
      final result = await userRepository.fetchUserReputationHistory(userId: 1, page: 1, pageSize: 10);

      // Kiểm tra kết quả
      expect(result, isA<UserDetailResponse>());
      expect(result.items.first.reputation_change, 10);
    });

    test('fetchUserReputationHistory throws an exception if the http call completes with an error', () async {
      // Mock lỗi khi gọi API
      when(mockHttpClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      // Kiểm tra exception
      expect(() async => await userRepository.fetchUserReputationHistory(userId: 1, page: 1, pageSize: 10),
          throwsException);
    });
  });
}
