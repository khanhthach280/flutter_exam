import 'package:freezed_annotation/freezed_annotation.dart';

part 'reputation_history.freezed.dart';
part 'reputation_history.g.dart';


@freezed
class ReputationHistory with _$ReputationHistory {
  const factory ReputationHistory({
    @Default('') String reputation_history_type,
    int? reputation_change,
    @Default(0) int post_id,
    @Default(0) int creation_date,
    @Default(0) int user_id,
  }) = _ReputationHistory;

  factory ReputationHistory.fromJson(Map<String, dynamic> json) => _$ReputationHistoryFromJson(json);
}
