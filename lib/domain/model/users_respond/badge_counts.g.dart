// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BadgeCountsImpl _$$BadgeCountsImplFromJson(Map<String, dynamic> json) =>
    _$BadgeCountsImpl(
      bronze: (json['bronze'] as num?)?.toInt(),
      silver: (json['silver'] as num?)?.toInt(),
      gold: (json['gold'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BadgeCountsImplToJson(_$BadgeCountsImpl instance) =>
    <String, dynamic>{
      'bronze': instance.bronze,
      'silver': instance.silver,
      'gold': instance.gold,
    };
