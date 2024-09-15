// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      has_more: json['has_more'] as bool? ?? false,
      quota_max: (json['quota_max'] as num?)?.toInt() ?? 0,
      quota_remaining: (json['quota_remaining'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'has_more': instance.has_more,
      'quota_max': instance.quota_max,
      'quota_remaining': instance.quota_remaining,
    };
