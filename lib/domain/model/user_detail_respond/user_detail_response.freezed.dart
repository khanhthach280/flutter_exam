// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetailResponse _$UserDetailResponseFromJson(Map<String, dynamic> json) {
  return _UserDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$UserDetailResponse {
  List<ReputationHistory> get items => throw _privateConstructorUsedError;
  bool get has_more => throw _privateConstructorUsedError;
  int get quota_max => throw _privateConstructorUsedError;
  int get quota_remaining => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailResponseCopyWith<UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailResponseCopyWith<$Res> {
  factory $UserDetailResponseCopyWith(
          UserDetailResponse value, $Res Function(UserDetailResponse) then) =
      _$UserDetailResponseCopyWithImpl<$Res, UserDetailResponse>;
  @useResult
  $Res call(
      {List<ReputationHistory> items,
      bool has_more,
      int quota_max,
      int quota_remaining});
}

/// @nodoc
class _$UserDetailResponseCopyWithImpl<$Res, $Val extends UserDetailResponse>
    implements $UserDetailResponseCopyWith<$Res> {
  _$UserDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? has_more = null,
    Object? quota_max = null,
    Object? quota_remaining = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ReputationHistory>,
      has_more: null == has_more
          ? _value.has_more
          : has_more // ignore: cast_nullable_to_non_nullable
              as bool,
      quota_max: null == quota_max
          ? _value.quota_max
          : quota_max // ignore: cast_nullable_to_non_nullable
              as int,
      quota_remaining: null == quota_remaining
          ? _value.quota_remaining
          : quota_remaining // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailResponseImplCopyWith<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  factory _$$UserDetailResponseImplCopyWith(_$UserDetailResponseImpl value,
          $Res Function(_$UserDetailResponseImpl) then) =
      __$$UserDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ReputationHistory> items,
      bool has_more,
      int quota_max,
      int quota_remaining});
}

/// @nodoc
class __$$UserDetailResponseImplCopyWithImpl<$Res>
    extends _$UserDetailResponseCopyWithImpl<$Res, _$UserDetailResponseImpl>
    implements _$$UserDetailResponseImplCopyWith<$Res> {
  __$$UserDetailResponseImplCopyWithImpl(_$UserDetailResponseImpl _value,
      $Res Function(_$UserDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? has_more = null,
    Object? quota_max = null,
    Object? quota_remaining = null,
  }) {
    return _then(_$UserDetailResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ReputationHistory>,
      has_more: null == has_more
          ? _value.has_more
          : has_more // ignore: cast_nullable_to_non_nullable
              as bool,
      quota_max: null == quota_max
          ? _value.quota_max
          : quota_max // ignore: cast_nullable_to_non_nullable
              as int,
      quota_remaining: null == quota_remaining
          ? _value.quota_remaining
          : quota_remaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailResponseImpl implements _UserDetailResponse {
  const _$UserDetailResponseImpl(
      {required final List<ReputationHistory> items,
      required this.has_more,
      required this.quota_max,
      required this.quota_remaining})
      : _items = items;

  factory _$UserDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailResponseImplFromJson(json);

  final List<ReputationHistory> _items;
  @override
  List<ReputationHistory> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool has_more;
  @override
  final int quota_max;
  @override
  final int quota_remaining;

  @override
  String toString() {
    return 'UserDetailResponse(items: $items, has_more: $has_more, quota_max: $quota_max, quota_remaining: $quota_remaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.has_more, has_more) ||
                other.has_more == has_more) &&
            (identical(other.quota_max, quota_max) ||
                other.quota_max == quota_max) &&
            (identical(other.quota_remaining, quota_remaining) ||
                other.quota_remaining == quota_remaining));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      has_more,
      quota_max,
      quota_remaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailResponseImplCopyWith<_$UserDetailResponseImpl> get copyWith =>
      __$$UserDetailResponseImplCopyWithImpl<_$UserDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _UserDetailResponse implements UserDetailResponse {
  const factory _UserDetailResponse(
      {required final List<ReputationHistory> items,
      required final bool has_more,
      required final int quota_max,
      required final int quota_remaining}) = _$UserDetailResponseImpl;

  factory _UserDetailResponse.fromJson(Map<String, dynamic> json) =
      _$UserDetailResponseImpl.fromJson;

  @override
  List<ReputationHistory> get items;
  @override
  bool get has_more;
  @override
  int get quota_max;
  @override
  int get quota_remaining;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailResponseImplCopyWith<_$UserDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
