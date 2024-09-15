// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  BadgeCounts? get badge_counts => throw _privateConstructorUsedError;
  int get account_id => throw _privateConstructorUsedError;
  bool get is_employee => throw _privateConstructorUsedError;
  int? get last_modified_date => throw _privateConstructorUsedError;
  int? get last_access_date => throw _privateConstructorUsedError;
  int? get reputation_change_year => throw _privateConstructorUsedError;
  int? get reputation_change_quarter => throw _privateConstructorUsedError;
  int? get reputation_change_month => throw _privateConstructorUsedError;
  int? get reputation_change_week => throw _privateConstructorUsedError;
  int? get reputation_change_day => throw _privateConstructorUsedError;
  int? get reputation => throw _privateConstructorUsedError;
  int? get creation_date => throw _privateConstructorUsedError;
  String? get user_type => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  int? get accept_rate => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get website_url => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String get profile_image => throw _privateConstructorUsedError;
  String get display_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {BadgeCounts? badge_counts,
      int account_id,
      bool is_employee,
      int? last_modified_date,
      int? last_access_date,
      int? reputation_change_year,
      int? reputation_change_quarter,
      int? reputation_change_month,
      int? reputation_change_week,
      int? reputation_change_day,
      int? reputation,
      int? creation_date,
      String? user_type,
      int user_id,
      int? accept_rate,
      String? location,
      String? website_url,
      String? link,
      String profile_image,
      String display_name});

  $BadgeCountsCopyWith<$Res>? get badge_counts;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badge_counts = freezed,
    Object? account_id = null,
    Object? is_employee = null,
    Object? last_modified_date = freezed,
    Object? last_access_date = freezed,
    Object? reputation_change_year = freezed,
    Object? reputation_change_quarter = freezed,
    Object? reputation_change_month = freezed,
    Object? reputation_change_week = freezed,
    Object? reputation_change_day = freezed,
    Object? reputation = freezed,
    Object? creation_date = freezed,
    Object? user_type = freezed,
    Object? user_id = null,
    Object? accept_rate = freezed,
    Object? location = freezed,
    Object? website_url = freezed,
    Object? link = freezed,
    Object? profile_image = null,
    Object? display_name = null,
  }) {
    return _then(_value.copyWith(
      badge_counts: freezed == badge_counts
          ? _value.badge_counts
          : badge_counts // ignore: cast_nullable_to_non_nullable
              as BadgeCounts?,
      account_id: null == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as int,
      is_employee: null == is_employee
          ? _value.is_employee
          : is_employee // ignore: cast_nullable_to_non_nullable
              as bool,
      last_modified_date: freezed == last_modified_date
          ? _value.last_modified_date
          : last_modified_date // ignore: cast_nullable_to_non_nullable
              as int?,
      last_access_date: freezed == last_access_date
          ? _value.last_access_date
          : last_access_date // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation_change_year: freezed == reputation_change_year
          ? _value.reputation_change_year
          : reputation_change_year // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation_change_quarter: freezed == reputation_change_quarter
          ? _value.reputation_change_quarter
          : reputation_change_quarter // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation_change_month: freezed == reputation_change_month
          ? _value.reputation_change_month
          : reputation_change_month // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation_change_week: freezed == reputation_change_week
          ? _value.reputation_change_week
          : reputation_change_week // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation_change_day: freezed == reputation_change_day
          ? _value.reputation_change_day
          : reputation_change_day // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation: freezed == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int?,
      creation_date: freezed == creation_date
          ? _value.creation_date
          : creation_date // ignore: cast_nullable_to_non_nullable
              as int?,
      user_type: freezed == user_type
          ? _value.user_type
          : user_type // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      accept_rate: freezed == accept_rate
          ? _value.accept_rate
          : accept_rate // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      website_url: freezed == website_url
          ? _value.website_url
          : website_url // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: null == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String,
      display_name: null == display_name
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BadgeCountsCopyWith<$Res>? get badge_counts {
    if (_value.badge_counts == null) {
      return null;
    }

    return $BadgeCountsCopyWith<$Res>(_value.badge_counts!, (value) {
      return _then(_value.copyWith(badge_counts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BadgeCounts? badge_counts,
      int account_id,
      bool is_employee,
      int? last_modified_date,
      int? last_access_date,
      int? reputation_change_year,
      int? reputation_change_quarter,
      int? reputation_change_month,
      int? reputation_change_week,
      int? reputation_change_day,
      int? reputation,
      int? creation_date,
      String? user_type,
      int user_id,
      int? accept_rate,
      String? location,
      String? website_url,
      String? link,
      String profile_image,
      String display_name});

  @override
  $BadgeCountsCopyWith<$Res>? get badge_counts;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badge_counts = freezed,
    Object? account_id = null,
    Object? is_employee = null,
    Object? last_modified_date = freezed,
    Object? last_access_date = freezed,
    Object? reputation_change_year = freezed,
    Object? reputation_change_quarter = freezed,
    Object? reputation_change_month = freezed,
    Object? reputation_change_week = freezed,
    Object? reputation_change_day = freezed,
    Object? reputation = freezed,
    Object? creation_date = freezed,
    Object? user_type = freezed,
    Object? user_id = null,
    Object? accept_rate = freezed,
    Object? location = freezed,
    Object? website_url = freezed,
    Object? link = freezed,
    Object? profile_image = null,
    Object? display_name = null,
  }) {
    return _then(_$UserImpl(
      badge_counts: freezed == badge_counts
          ? _value.badge_counts
          : badge_counts // ignore: cast_nullable_to_non_nullable
              as BadgeCounts?,
      account_id: null == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as int,
      is_employee: null == is_employee
          ? _value.is_employee
          : is_employee // ignore: cast_nullable_to_non_nullable
              as bool,
      last_modified_date: freezed == last_modified_date
          ? _value.last_modified_date
          : last_modified_date // ignore: cast_nullable_to_non_nullable
              as int?,
      last_access_date: freezed == last_access_date
          ? _value.last_access_date
          : last_access_date // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation_change_year: freezed == reputation_change_year
          ? _value.reputation_change_year
          : reputation_change_year // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation_change_quarter: freezed == reputation_change_quarter
          ? _value.reputation_change_quarter
          : reputation_change_quarter // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation_change_month: freezed == reputation_change_month
          ? _value.reputation_change_month
          : reputation_change_month // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation_change_week: freezed == reputation_change_week
          ? _value.reputation_change_week
          : reputation_change_week // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation_change_day: freezed == reputation_change_day
          ? _value.reputation_change_day
          : reputation_change_day // ignore: cast_nullable_to_non_nullable
              as int?,
      reputation: freezed == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int?,
      creation_date: freezed == creation_date
          ? _value.creation_date
          : creation_date // ignore: cast_nullable_to_non_nullable
              as int?,
      user_type: freezed == user_type
          ? _value.user_type
          : user_type // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      accept_rate: freezed == accept_rate
          ? _value.accept_rate
          : accept_rate // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      website_url: freezed == website_url
          ? _value.website_url
          : website_url // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: null == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String,
      display_name: null == display_name
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.badge_counts,
      this.account_id = 0,
      this.is_employee = false,
      this.last_modified_date,
      this.last_access_date,
      this.reputation_change_year,
      this.reputation_change_quarter,
      this.reputation_change_month,
      this.reputation_change_week,
      this.reputation_change_day,
      this.reputation,
      this.creation_date,
      this.user_type,
      this.user_id = 0,
      this.accept_rate,
      this.location,
      this.website_url,
      this.link,
      this.profile_image = '',
      this.display_name = ''});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final BadgeCounts? badge_counts;
  @override
  @JsonKey()
  final int account_id;
  @override
  @JsonKey()
  final bool is_employee;
  @override
  final int? last_modified_date;
  @override
  final int? last_access_date;
  @override
  final int? reputation_change_year;
  @override
  final int? reputation_change_quarter;
  @override
  final int? reputation_change_month;
  @override
  final int? reputation_change_week;
  @override
  final int? reputation_change_day;
  @override
  final int? reputation;
  @override
  final int? creation_date;
  @override
  final String? user_type;
  @override
  @JsonKey()
  final int user_id;
  @override
  final int? accept_rate;
  @override
  final String? location;
  @override
  final String? website_url;
  @override
  final String? link;
  @override
  @JsonKey()
  final String profile_image;
  @override
  @JsonKey()
  final String display_name;

  @override
  String toString() {
    return 'User(badge_counts: $badge_counts, account_id: $account_id, is_employee: $is_employee, last_modified_date: $last_modified_date, last_access_date: $last_access_date, reputation_change_year: $reputation_change_year, reputation_change_quarter: $reputation_change_quarter, reputation_change_month: $reputation_change_month, reputation_change_week: $reputation_change_week, reputation_change_day: $reputation_change_day, reputation: $reputation, creation_date: $creation_date, user_type: $user_type, user_id: $user_id, accept_rate: $accept_rate, location: $location, website_url: $website_url, link: $link, profile_image: $profile_image, display_name: $display_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.badge_counts, badge_counts) ||
                other.badge_counts == badge_counts) &&
            (identical(other.account_id, account_id) ||
                other.account_id == account_id) &&
            (identical(other.is_employee, is_employee) ||
                other.is_employee == is_employee) &&
            (identical(other.last_modified_date, last_modified_date) ||
                other.last_modified_date == last_modified_date) &&
            (identical(other.last_access_date, last_access_date) ||
                other.last_access_date == last_access_date) &&
            (identical(other.reputation_change_year, reputation_change_year) ||
                other.reputation_change_year == reputation_change_year) &&
            (identical(other.reputation_change_quarter,
                    reputation_change_quarter) ||
                other.reputation_change_quarter == reputation_change_quarter) &&
            (identical(
                    other.reputation_change_month, reputation_change_month) ||
                other.reputation_change_month == reputation_change_month) &&
            (identical(other.reputation_change_week, reputation_change_week) ||
                other.reputation_change_week == reputation_change_week) &&
            (identical(other.reputation_change_day, reputation_change_day) ||
                other.reputation_change_day == reputation_change_day) &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation) &&
            (identical(other.creation_date, creation_date) ||
                other.creation_date == creation_date) &&
            (identical(other.user_type, user_type) ||
                other.user_type == user_type) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.accept_rate, accept_rate) ||
                other.accept_rate == accept_rate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.website_url, website_url) ||
                other.website_url == website_url) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image) &&
            (identical(other.display_name, display_name) ||
                other.display_name == display_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        badge_counts,
        account_id,
        is_employee,
        last_modified_date,
        last_access_date,
        reputation_change_year,
        reputation_change_quarter,
        reputation_change_month,
        reputation_change_week,
        reputation_change_day,
        reputation,
        creation_date,
        user_type,
        user_id,
        accept_rate,
        location,
        website_url,
        link,
        profile_image,
        display_name
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final BadgeCounts? badge_counts,
      final int account_id,
      final bool is_employee,
      final int? last_modified_date,
      final int? last_access_date,
      final int? reputation_change_year,
      final int? reputation_change_quarter,
      final int? reputation_change_month,
      final int? reputation_change_week,
      final int? reputation_change_day,
      final int? reputation,
      final int? creation_date,
      final String? user_type,
      final int user_id,
      final int? accept_rate,
      final String? location,
      final String? website_url,
      final String? link,
      final String profile_image,
      final String display_name}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  BadgeCounts? get badge_counts;
  @override
  int get account_id;
  @override
  bool get is_employee;
  @override
  int? get last_modified_date;
  @override
  int? get last_access_date;
  @override
  int? get reputation_change_year;
  @override
  int? get reputation_change_quarter;
  @override
  int? get reputation_change_month;
  @override
  int? get reputation_change_week;
  @override
  int? get reputation_change_day;
  @override
  int? get reputation;
  @override
  int? get creation_date;
  @override
  String? get user_type;
  @override
  int get user_id;
  @override
  int? get accept_rate;
  @override
  String? get location;
  @override
  String? get website_url;
  @override
  String? get link;
  @override
  String get profile_image;
  @override
  String get display_name;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
