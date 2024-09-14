import 'package:flutter_application/domain/badge_counts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required BadgeCounts badge_counts,
    required int account_id,
    required bool is_employee,
    required int last_modified_date,
    required int last_access_date,
    required int reputation_change_year,
    required int reputation_change_quarter,
    required int reputation_change_month,
    required int reputation_change_week,
    required int reputation_change_day,
    required int reputation,
    required int creation_date,
    required String user_type,
    required int user_id,
    int? accept_rate,
    String? location,
    String? website_url,
    required String link,
    required String profile_image,
    required String display_name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  
}