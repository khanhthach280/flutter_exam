import 'dart:convert';
import 'package:flutter_application/domain/model/user_detail_respond/user_detail_response.dart';
import 'package:flutter_application/domain/model/users_respond/user_response.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  final String _baseUrl = 'https://api.stackexchange.com/2.2/users';

  Future<UserResponse> fetchUsers({int page = 1, int pageSize = 30}) async {
    try {
      final response = await http.get(
        Uri.parse(
          '$_baseUrl?page=$page&pagesize=$pageSize&site=stackoverflow',
        ),
        headers: {
          'Accept': 'application/json;charset=utf-t',
          'Accept-Language': 'en',
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body) as Map<String, dynamic>;
        return UserResponse.fromJson(data);
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Error fetching users: $e');
    }
  }

  Future<UserDetailResponse> fetchUserReputationHistory({
    required int userId,
    int page = 1,
    int pageSize = 30,
  }) async {
    try {
      final response = await http.get(
        Uri.parse(
          '$_baseUrl/$userId/reputation-history?page=$page&pagesize=$pageSize&site=stackoverflow',
        ),
        headers: {
          'Accept': 'application/json;charset=utf-t',
          'Accept-Language': 'en',
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body) as Map<String, dynamic>;
        return UserDetailResponse.fromJson(data);
      } else {
        throw Exception('Failed to load user reputation history');
      }
    } catch (e) {
      throw Exception('Error fetching user reputation history: $e');
    }
  }
}
