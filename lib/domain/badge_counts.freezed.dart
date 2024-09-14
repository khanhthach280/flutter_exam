// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'badge_counts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BadgeCounts _$BadgeCountsFromJson(Map<String, dynamic> json) {
  return _BadgeCounts.fromJson(json);
}

/// @nodoc
mixin _$BadgeCounts {
  int get bronze => throw _privateConstructorUsedError;
  int get silver => throw _privateConstructorUsedError;
  int get gold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgeCountsCopyWith<BadgeCounts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCountsCopyWith<$Res> {
  factory $BadgeCountsCopyWith(
          BadgeCounts value, $Res Function(BadgeCounts) then) =
      _$BadgeCountsCopyWithImpl<$Res, BadgeCounts>;
  @useResult
  $Res call({int bronze, int silver, int gold});
}

/// @nodoc
class _$BadgeCountsCopyWithImpl<$Res, $Val extends BadgeCounts>
    implements $BadgeCountsCopyWith<$Res> {
  _$BadgeCountsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bronze = null,
    Object? silver = null,
    Object? gold = null,
  }) {
    return _then(_value.copyWith(
      bronze: null == bronze
          ? _value.bronze
          : bronze // ignore: cast_nullable_to_non_nullable
              as int,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as int,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadgeCountsImplCopyWith<$Res>
    implements $BadgeCountsCopyWith<$Res> {
  factory _$$BadgeCountsImplCopyWith(
          _$BadgeCountsImpl value, $Res Function(_$BadgeCountsImpl) then) =
      __$$BadgeCountsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bronze, int silver, int gold});
}

/// @nodoc
class __$$BadgeCountsImplCopyWithImpl<$Res>
    extends _$BadgeCountsCopyWithImpl<$Res, _$BadgeCountsImpl>
    implements _$$BadgeCountsImplCopyWith<$Res> {
  __$$BadgeCountsImplCopyWithImpl(
      _$BadgeCountsImpl _value, $Res Function(_$BadgeCountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bronze = null,
    Object? silver = null,
    Object? gold = null,
  }) {
    return _then(_$BadgeCountsImpl(
      bronze: null == bronze
          ? _value.bronze
          : bronze // ignore: cast_nullable_to_non_nullable
              as int,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as int,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgeCountsImpl implements _BadgeCounts {
  const _$BadgeCountsImpl(
      {required this.bronze, required this.silver, required this.gold});

  factory _$BadgeCountsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgeCountsImplFromJson(json);

  @override
  final int bronze;
  @override
  final int silver;
  @override
  final int gold;

  @override
  String toString() {
    return 'BadgeCounts(bronze: $bronze, silver: $silver, gold: $gold)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgeCountsImpl &&
            (identical(other.bronze, bronze) || other.bronze == bronze) &&
            (identical(other.silver, silver) || other.silver == silver) &&
            (identical(other.gold, gold) || other.gold == gold));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bronze, silver, gold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadgeCountsImplCopyWith<_$BadgeCountsImpl> get copyWith =>
      __$$BadgeCountsImplCopyWithImpl<_$BadgeCountsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgeCountsImplToJson(
      this,
    );
  }
}

abstract class _BadgeCounts implements BadgeCounts {
  const factory _BadgeCounts(
      {required final int bronze,
      required final int silver,
      required final int gold}) = _$BadgeCountsImpl;

  factory _BadgeCounts.fromJson(Map<String, dynamic> json) =
      _$BadgeCountsImpl.fromJson;

  @override
  int get bronze;
  @override
  int get silver;
  @override
  int get gold;
  @override
  @JsonKey(ignore: true)
  _$$BadgeCountsImplCopyWith<_$BadgeCountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
