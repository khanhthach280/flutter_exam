// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reputation_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReputationHistoryImpl _$$ReputationHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ReputationHistoryImpl(
      reputation_history_type: json['reputation_history_type'] as String,
      reputation_change: (json['reputation_change'] as num).toInt(),
      post_id: (json['post_id'] as num).toInt(),
      creation_date: (json['creation_date'] as num).toInt(),
      user_id: (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ReputationHistoryImplToJson(
        _$ReputationHistoryImpl instance) =>
    <String, dynamic>{
      'reputation_history_type': instance.reputation_history_type,
      'reputation_change': instance.reputation_change,
      'post_id': instance.post_id,
      'creation_date': instance.creation_date,
      'user_id': instance.user_id,
    };
