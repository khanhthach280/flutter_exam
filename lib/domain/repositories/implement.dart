import 'dart:convert';
import 'package:flutter_application/domain/user_response.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  final String _baseUrl = 'https://api.stackexchange.com/2.2/users';

  // Phương thức lấy danh sách người dùng từ API
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
        // Ánh xạ dữ liệu JSON thành UserResponse
        final data = json.decode(response.body) as Map<String, dynamic>;
        return UserResponse.fromJson(data);
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Error fetching users: $e');
    }
  }
}
