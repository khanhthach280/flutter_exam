import 'package:freezed_annotation/freezed_annotation.dart';

part 'reputation_history.freezed.dart';
part 'reputation_history.g.dart';


@freezed
class ReputationHistory with _$ReputationHistory {
  const factory ReputationHistory({
    required String reputation_history_type,
    required int reputation_change,
    required int post_id,
    required int creation_date,
    required int user_id,
  }) = _ReputationHistory;

  factory ReputationHistory.fromJson(Map<String, dynamic> json) => _$ReputationHistoryFromJson(json);
}
