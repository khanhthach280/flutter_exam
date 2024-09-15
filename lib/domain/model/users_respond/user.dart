import 'package:flutter_application/domain/model/users_respond/badge_counts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    BadgeCounts? badge_counts,
    @Default(0) int account_id,
    @Default(false) bool is_employee,
    int? last_modified_date,
    int? last_access_date,
    int? reputation_change_year,
    int? reputation_change_quarter,
    int? reputation_change_month,
    int? reputation_change_week,
    int? reputation_change_day,
    int? reputation,
    int? creation_date,
    String? user_type,
    @Default(0) int user_id,
    int? accept_rate,
    String? location,
    String? website_url,
    String? link,
    @Default('') String profile_image,
    @Default('') String display_name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  
}