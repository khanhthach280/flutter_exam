// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reputation_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReputationHistory _$ReputationHistoryFromJson(Map<String, dynamic> json) {
  return _ReputationHistory.fromJson(json);
}

/// @nodoc
mixin _$ReputationHistory {
  String get reputation_history_type => throw _privateConstructorUsedError;
  int get reputation_change => throw _privateConstructorUsedError;
  int get post_id => throw _privateConstructorUsedError;
  int get creation_date => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReputationHistoryCopyWith<ReputationHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReputationHistoryCopyWith<$Res> {
  factory $ReputationHistoryCopyWith(
          ReputationHistory value, $Res Function(ReputationHistory) then) =
      _$ReputationHistoryCopyWithImpl<$Res, ReputationHistory>;
  @useResult
  $Res call(
      {String reputation_history_type,
      int reputation_change,
      int post_id,
      int creation_date,
      int user_id});
}

/// @nodoc
class _$ReputationHistoryCopyWithImpl<$Res, $Val extends ReputationHistory>
    implements $ReputationHistoryCopyWith<$Res> {
  _$ReputationHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reputation_history_type = null,
    Object? reputation_change = null,
    Object? post_id = null,
    Object? creation_date = null,
    Object? user_id = null,
  }) {
    return _then(_value.copyWith(
      reputation_history_type: null == reputation_history_type
          ? _value.reputation_history_type
          : reputation_history_type // ignore: cast_nullable_to_non_nullable
              as String,
      reputation_change: null == reputation_change
          ? _value.reputation_change
          : reputation_change // ignore: cast_nullable_to_non_nullable
              as int,
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as int,
      creation_date: null == creation_date
          ? _value.creation_date
          : creation_date // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReputationHistoryImplCopyWith<$Res>
    implements $ReputationHistoryCopyWith<$Res> {
  factory _$$ReputationHistoryImplCopyWith(_$ReputationHistoryImpl value,
          $Res Function(_$ReputationHistoryImpl) then) =
      __$$ReputationHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reputation_history_type,
      int reputation_change,
      int post_id,
      int creation_date,
      int user_id});
}

/// @nodoc
class __$$ReputationHistoryImplCopyWithImpl<$Res>
    extends _$ReputationHistoryCopyWithImpl<$Res, _$ReputationHistoryImpl>
    implements _$$ReputationHistoryImplCopyWith<$Res> {
  __$$ReputationHistoryImplCopyWithImpl(_$ReputationHistoryImpl _value,
      $Res Function(_$ReputationHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reputation_history_type = null,
    Object? reputation_change = null,
    Object? post_id = null,
    Object? creation_date = null,
    Object? user_id = null,
  }) {
    return _then(_$ReputationHistoryImpl(
      reputation_history_type: null == reputation_history_type
          ? _value.reputation_history_type
          : reputation_history_type // ignore: cast_nullable_to_non_nullable
              as String,
      reputation_change: null == reputation_change
          ? _value.reputation_change
          : reputation_change // ignore: cast_nullable_to_non_nullable
              as int,
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as int,
      creation_date: null == creation_date
          ? _value.creation_date
          : creation_date // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReputationHistoryImpl implements _ReputationHistory {
  const _$ReputationHistoryImpl(
      {required this.reputation_history_type,
      required this.reputation_change,
      required this.post_id,
      required this.creation_date,
      required this.user_id});

  factory _$ReputationHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReputationHistoryImplFromJson(json);

  @override
  final String reputation_history_type;
  @override
  final int reputation_change;
  @override
  final int post_id;
  @override
  final int creation_date;
  @override
  final int user_id;

  @override
  String toString() {
    return 'ReputationHistory(reputation_history_type: $reputation_history_type, reputation_change: $reputation_change, post_id: $post_id, creation_date: $creation_date, user_id: $user_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReputationHistoryImpl &&
            (identical(
                    other.reputation_history_type, reputation_history_type) ||
                other.reputation_history_type == reputation_history_type) &&
            (identical(other.reputation_change, reputation_change) ||
                other.reputation_change == reputation_change) &&
            (identical(other.post_id, post_id) || other.post_id == post_id) &&
            (identical(other.creation_date, creation_date) ||
                other.creation_date == creation_date) &&
            (identical(other.user_id, user_id) || other.user_id == user_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reputation_history_type,
      reputation_change, post_id, creation_date, user_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReputationHistoryImplCopyWith<_$ReputationHistoryImpl> get copyWith =>
      __$$ReputationHistoryImplCopyWithImpl<_$ReputationHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReputationHistoryImplToJson(
      this,
    );
  }
}

abstract class _ReputationHistory implements ReputationHistory {
  const factory _ReputationHistory(
      {required final String reputation_history_type,
      required final int reputation_change,
      required final int post_id,
      required final int creation_date,
      required final int user_id}) = _$ReputationHistoryImpl;

  factory _ReputationHistory.fromJson(Map<String, dynamic> json) =
      _$ReputationHistoryImpl.fromJson;

  @override
  String get reputation_history_type;
  @override
  int get reputation_change;
  @override
  int get post_id;
  @override
  int get creation_date;
  @override
  int get user_id;
  @override
  @JsonKey(ignore: true)
  _$$ReputationHistoryImplCopyWith<_$ReputationHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
