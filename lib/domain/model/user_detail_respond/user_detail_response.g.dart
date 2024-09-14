// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailResponseImpl _$$UserDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ReputationHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      has_more: json['has_more'] as bool,
      quota_max: (json['quota_max'] as num).toInt(),
      quota_remaining: (json['quota_remaining'] as num).toInt(),
    );

Map<String, dynamic> _$$UserDetailResponseImplToJson(
        _$UserDetailResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'has_more': instance.has_more,
      'quota_max': instance.quota_max,
      'quota_remaining': instance.quota_remaining,
    };
