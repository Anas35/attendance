// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentAttendance _$StudentAttendanceFromJson(Map<String, dynamic> json) {
  return _StudentAttendance.fromJson(json);
}

/// @nodoc
mixin _$StudentAttendance {
  String get regNo => throw _privateConstructorUsedError;
  String get studentName => throw _privateConstructorUsedError;
  String get present => throw _privateConstructorUsedError;
  String get absent => throw _privateConstructorUsedError;
  String get percentage => throw _privateConstructorUsedError;
  List<SubjectAttendance> get records => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentAttendanceCopyWith<StudentAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAttendanceCopyWith<$Res> {
  factory $StudentAttendanceCopyWith(
          StudentAttendance value, $Res Function(StudentAttendance) then) =
      _$StudentAttendanceCopyWithImpl<$Res, StudentAttendance>;
  @useResult
  $Res call(
      {String regNo,
      String studentName,
      String present,
      String absent,
      String percentage,
      List<SubjectAttendance> records});
}

/// @nodoc
class _$StudentAttendanceCopyWithImpl<$Res, $Val extends StudentAttendance>
    implements $StudentAttendanceCopyWith<$Res> {
  _$StudentAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regNo = null,
    Object? studentName = null,
    Object? present = null,
    Object? absent = null,
    Object? percentage = null,
    Object? records = null,
  }) {
    return _then(_value.copyWith(
      regNo: null == regNo
          ? _value.regNo
          : regNo // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      present: null == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as String,
      absent: null == absent
          ? _value.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<SubjectAttendance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentAttendanceCopyWith<$Res>
    implements $StudentAttendanceCopyWith<$Res> {
  factory _$$_StudentAttendanceCopyWith(_$_StudentAttendance value,
          $Res Function(_$_StudentAttendance) then) =
      __$$_StudentAttendanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String regNo,
      String studentName,
      String present,
      String absent,
      String percentage,
      List<SubjectAttendance> records});
}

/// @nodoc
class __$$_StudentAttendanceCopyWithImpl<$Res>
    extends _$StudentAttendanceCopyWithImpl<$Res, _$_StudentAttendance>
    implements _$$_StudentAttendanceCopyWith<$Res> {
  __$$_StudentAttendanceCopyWithImpl(
      _$_StudentAttendance _value, $Res Function(_$_StudentAttendance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regNo = null,
    Object? studentName = null,
    Object? present = null,
    Object? absent = null,
    Object? percentage = null,
    Object? records = null,
  }) {
    return _then(_$_StudentAttendance(
      regNo: null == regNo
          ? _value.regNo
          : regNo // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      present: null == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as String,
      absent: null == absent
          ? _value.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String,
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<SubjectAttendance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentAttendance implements _StudentAttendance {
  _$_StudentAttendance(
      {required this.regNo,
      required this.studentName,
      required this.present,
      required this.absent,
      required this.percentage,
      final List<SubjectAttendance> records = const []})
      : _records = records;

  factory _$_StudentAttendance.fromJson(Map<String, dynamic> json) =>
      _$$_StudentAttendanceFromJson(json);

  @override
  final String regNo;
  @override
  final String studentName;
  @override
  final String present;
  @override
  final String absent;
  @override
  final String percentage;
  final List<SubjectAttendance> _records;
  @override
  @JsonKey()
  List<SubjectAttendance> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'StudentAttendance(regNo: $regNo, studentName: $studentName, present: $present, absent: $absent, percentage: $percentage, records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentAttendance &&
            (identical(other.regNo, regNo) || other.regNo == regNo) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.absent, absent) || other.absent == absent) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, regNo, studentName, present,
      absent, percentage, const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentAttendanceCopyWith<_$_StudentAttendance> get copyWith =>
      __$$_StudentAttendanceCopyWithImpl<_$_StudentAttendance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentAttendanceToJson(
      this,
    );
  }
}

abstract class _StudentAttendance implements StudentAttendance {
  factory _StudentAttendance(
      {required final String regNo,
      required final String studentName,
      required final String present,
      required final String absent,
      required final String percentage,
      final List<SubjectAttendance> records}) = _$_StudentAttendance;

  factory _StudentAttendance.fromJson(Map<String, dynamic> json) =
      _$_StudentAttendance.fromJson;

  @override
  String get regNo;
  @override
  String get studentName;
  @override
  String get present;
  @override
  String get absent;
  @override
  String get percentage;
  @override
  List<SubjectAttendance> get records;
  @override
  @JsonKey(ignore: true)
  _$$_StudentAttendanceCopyWith<_$_StudentAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectAttendance _$SubjectAttendanceFromJson(Map<String, dynamic> json) {
  return _SubjectAttendance.fromJson(json);
}

/// @nodoc
mixin _$SubjectAttendance {
  int get subjectId => throw _privateConstructorUsedError;
  String get subjectName => throw _privateConstructorUsedError;
  String get present => throw _privateConstructorUsedError;
  String get absent => throw _privateConstructorUsedError;
  String get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectAttendanceCopyWith<SubjectAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectAttendanceCopyWith<$Res> {
  factory $SubjectAttendanceCopyWith(
          SubjectAttendance value, $Res Function(SubjectAttendance) then) =
      _$SubjectAttendanceCopyWithImpl<$Res, SubjectAttendance>;
  @useResult
  $Res call(
      {int subjectId,
      String subjectName,
      String present,
      String absent,
      String percentage});
}

/// @nodoc
class _$SubjectAttendanceCopyWithImpl<$Res, $Val extends SubjectAttendance>
    implements $SubjectAttendanceCopyWith<$Res> {
  _$SubjectAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? subjectName = null,
    Object? present = null,
    Object? absent = null,
    Object? percentage = null,
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
      present: null == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as String,
      absent: null == absent
          ? _value.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubjectAttendanceCopyWith<$Res>
    implements $SubjectAttendanceCopyWith<$Res> {
  factory _$$_SubjectAttendanceCopyWith(_$_SubjectAttendance value,
          $Res Function(_$_SubjectAttendance) then) =
      __$$_SubjectAttendanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int subjectId,
      String subjectName,
      String present,
      String absent,
      String percentage});
}

/// @nodoc
class __$$_SubjectAttendanceCopyWithImpl<$Res>
    extends _$SubjectAttendanceCopyWithImpl<$Res, _$_SubjectAttendance>
    implements _$$_SubjectAttendanceCopyWith<$Res> {
  __$$_SubjectAttendanceCopyWithImpl(
      _$_SubjectAttendance _value, $Res Function(_$_SubjectAttendance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? subjectName = null,
    Object? present = null,
    Object? absent = null,
    Object? percentage = null,
  }) {
    return _then(_$_SubjectAttendance(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      present: null == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as String,
      absent: null == absent
          ? _value.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubjectAttendance implements _SubjectAttendance {
  _$_SubjectAttendance(
      {required this.subjectId,
      required this.subjectName,
      required this.present,
      required this.absent,
      required this.percentage});

  factory _$_SubjectAttendance.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectAttendanceFromJson(json);

  @override
  final int subjectId;
  @override
  final String subjectName;
  @override
  final String present;
  @override
  final String absent;
  @override
  final String percentage;

  @override
  String toString() {
    return 'SubjectAttendance(subjectId: $subjectId, subjectName: $subjectName, present: $present, absent: $absent, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubjectAttendance &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.absent, absent) || other.absent == absent) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, subjectId, subjectName, present, absent, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubjectAttendanceCopyWith<_$_SubjectAttendance> get copyWith =>
      __$$_SubjectAttendanceCopyWithImpl<_$_SubjectAttendance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectAttendanceToJson(
      this,
    );
  }
}

abstract class _SubjectAttendance implements SubjectAttendance {
  factory _SubjectAttendance(
      {required final int subjectId,
      required final String subjectName,
      required final String present,
      required final String absent,
      required final String percentage}) = _$_SubjectAttendance;

  factory _SubjectAttendance.fromJson(Map<String, dynamic> json) =
      _$_SubjectAttendance.fromJson;

  @override
  int get subjectId;
  @override
  String get subjectName;
  @override
  String get present;
  @override
  String get absent;
  @override
  String get percentage;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectAttendanceCopyWith<_$_SubjectAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}
