// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodayAttendanceList _$TodayAttendanceListFromJson(Map<String, dynamic> json) {
  return _TodayAttendanceList.fromJson(json);
}

/// @nodoc
mixin _$TodayAttendanceList {
  List<TodayAttendance> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodayAttendanceListCopyWith<TodayAttendanceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayAttendanceListCopyWith<$Res> {
  factory $TodayAttendanceListCopyWith(
          TodayAttendanceList value, $Res Function(TodayAttendanceList) then) =
      _$TodayAttendanceListCopyWithImpl<$Res, TodayAttendanceList>;
  @useResult
  $Res call({List<TodayAttendance> data});
}

/// @nodoc
class _$TodayAttendanceListCopyWithImpl<$Res, $Val extends TodayAttendanceList>
    implements $TodayAttendanceListCopyWith<$Res> {
  _$TodayAttendanceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TodayAttendance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodayAttendanceListCopyWith<$Res>
    implements $TodayAttendanceListCopyWith<$Res> {
  factory _$$_TodayAttendanceListCopyWith(_$_TodayAttendanceList value,
          $Res Function(_$_TodayAttendanceList) then) =
      __$$_TodayAttendanceListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodayAttendance> data});
}

/// @nodoc
class __$$_TodayAttendanceListCopyWithImpl<$Res>
    extends _$TodayAttendanceListCopyWithImpl<$Res, _$_TodayAttendanceList>
    implements _$$_TodayAttendanceListCopyWith<$Res> {
  __$$_TodayAttendanceListCopyWithImpl(_$_TodayAttendanceList _value,
      $Res Function(_$_TodayAttendanceList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_TodayAttendanceList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TodayAttendance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodayAttendanceList implements _TodayAttendanceList {
  _$_TodayAttendanceList({final List<TodayAttendance> data = const []})
      : _data = data;

  factory _$_TodayAttendanceList.fromJson(Map<String, dynamic> json) =>
      _$$_TodayAttendanceListFromJson(json);

  final List<TodayAttendance> _data;
  @override
  @JsonKey()
  List<TodayAttendance> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TodayAttendanceList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodayAttendanceList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodayAttendanceListCopyWith<_$_TodayAttendanceList> get copyWith =>
      __$$_TodayAttendanceListCopyWithImpl<_$_TodayAttendanceList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodayAttendanceListToJson(
      this,
    );
  }
}

abstract class _TodayAttendanceList implements TodayAttendanceList {
  factory _TodayAttendanceList({final List<TodayAttendance> data}) =
      _$_TodayAttendanceList;

  factory _TodayAttendanceList.fromJson(Map<String, dynamic> json) =
      _$_TodayAttendanceList.fromJson;

  @override
  List<TodayAttendance> get data;
  @override
  @JsonKey(ignore: true)
  _$$_TodayAttendanceListCopyWith<_$_TodayAttendanceList> get copyWith =>
      throw _privateConstructorUsedError;
}

TodayAttendance _$TodayAttendanceFromJson(Map<String, dynamic> json) {
  return _TodayAttendance.fromJson(json);
}

/// @nodoc
mixin _$TodayAttendance {
  int get subjectId => throw _privateConstructorUsedError;
  String get subjectName => throw _privateConstructorUsedError;
  int get isPresent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodayAttendanceCopyWith<TodayAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayAttendanceCopyWith<$Res> {
  factory $TodayAttendanceCopyWith(
          TodayAttendance value, $Res Function(TodayAttendance) then) =
      _$TodayAttendanceCopyWithImpl<$Res, TodayAttendance>;
  @useResult
  $Res call({int subjectId, String subjectName, int isPresent});
}

/// @nodoc
class _$TodayAttendanceCopyWithImpl<$Res, $Val extends TodayAttendance>
    implements $TodayAttendanceCopyWith<$Res> {
  _$TodayAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? subjectName = null,
    Object? isPresent = null,
  }) {
    return _then(_value.copyWith(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      isPresent: null == isPresent
          ? _value.isPresent
          : isPresent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodayAttendanceCopyWith<$Res>
    implements $TodayAttendanceCopyWith<$Res> {
  factory _$$_TodayAttendanceCopyWith(
          _$_TodayAttendance value, $Res Function(_$_TodayAttendance) then) =
      __$$_TodayAttendanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int subjectId, String subjectName, int isPresent});
}

/// @nodoc
class __$$_TodayAttendanceCopyWithImpl<$Res>
    extends _$TodayAttendanceCopyWithImpl<$Res, _$_TodayAttendance>
    implements _$$_TodayAttendanceCopyWith<$Res> {
  __$$_TodayAttendanceCopyWithImpl(
      _$_TodayAttendance _value, $Res Function(_$_TodayAttendance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? subjectName = null,
    Object? isPresent = null,
  }) {
    return _then(_$_TodayAttendance(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      isPresent: null == isPresent
          ? _value.isPresent
          : isPresent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodayAttendance implements _TodayAttendance {
  _$_TodayAttendance(
      {required this.subjectId,
      required this.subjectName,
      required this.isPresent});

  factory _$_TodayAttendance.fromJson(Map<String, dynamic> json) =>
      _$$_TodayAttendanceFromJson(json);

  @override
  final int subjectId;
  @override
  final String subjectName;
  @override
  final int isPresent;

  @override
  String toString() {
    return 'TodayAttendance(subjectId: $subjectId, subjectName: $subjectName, isPresent: $isPresent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodayAttendance &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName) &&
            (identical(other.isPresent, isPresent) ||
                other.isPresent == isPresent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, subjectId, subjectName, isPresent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodayAttendanceCopyWith<_$_TodayAttendance> get copyWith =>
      __$$_TodayAttendanceCopyWithImpl<_$_TodayAttendance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodayAttendanceToJson(
      this,
    );
  }
}

abstract class _TodayAttendance implements TodayAttendance {
  factory _TodayAttendance(
      {required final int subjectId,
      required final String subjectName,
      required final int isPresent}) = _$_TodayAttendance;

  factory _TodayAttendance.fromJson(Map<String, dynamic> json) =
      _$_TodayAttendance.fromJson;

  @override
  int get subjectId;
  @override
  String get subjectName;
  @override
  int get isPresent;
  @override
  @JsonKey(ignore: true)
  _$$_TodayAttendanceCopyWith<_$_TodayAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}
