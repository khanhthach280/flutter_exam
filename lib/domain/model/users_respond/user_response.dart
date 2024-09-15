import 'package:flutter_application/domain/model/users_respond/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    @Default([]) List<User> items,
    @Default(false) bool has_more,
    @Default(0) int quota_max,
    @Default(0) int quota_remaining,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}




