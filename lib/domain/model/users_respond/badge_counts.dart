import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge_counts.freezed.dart';
part 'badge_counts.g.dart';

@freezed
class BadgeCounts with _$BadgeCounts {
  const factory BadgeCounts({
    int? bronze,
    int? silver,
    int? gold,
  }) = _BadgeCounts;

  factory BadgeCounts.fromJson(Map<String, dynamic> json) =>
      _$BadgeCountsFromJson(json);
}