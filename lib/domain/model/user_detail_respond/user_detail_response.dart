import 'package:flutter_application/domain/model/user_detail_respond/reputation_history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_response.freezed.dart';
part 'user_detail_response.g.dart';

@freezed
class UserDetailResponse with _$UserDetailResponse {
  const factory UserDetailResponse({
    @Default([]) List<ReputationHistory> items,
    @Default(false) bool has_more,
    @Default(0) int quota_max,
    @Default(0) int quota_remaining,
  }) = _UserDetailResponse;

  factory UserDetailResponse.fromJson(Map<String, dynamic> json) => _$UserDetailResponseFromJson(json);
}