import 'package:flutter_application/domain/model/user_detail_respond/reputation_history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_response.freezed.dart';
part 'user_detail_response.g.dart';

@freezed
class UserDetailResponse with _$UserDetailResponse {
  const factory UserDetailResponse({
    required List<ReputationHistory> items,
    required bool has_more,
    required int quota_max,
    required int quota_remaining,
  }) = _UserDetailResponse;

  factory UserDetailResponse.fromJson(Map<String, dynamic> json) => _$UserDetailResponseFromJson(json);
}