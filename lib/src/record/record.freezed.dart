// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceRecordResponseList _$AttendanceRecordResponseListFromJson(
    Map<String, dynamic> json) {
  return _AttendanceRecordResponseList.fromJson(json);
}

/// @nodoc
mixin _$AttendanceRecordResponseList {
  List<AttendanceRecordResponse> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceRecordResponseListCopyWith<AttendanceRecordResponseList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceRecordResponseListCopyWith<$Res> {
  factory $AttendanceRecordResponseListCopyWith(
          AttendanceRecordResponseList value,
          $Res Function(AttendanceRecordResponseList) then) =
      _$AttendanceRecordResponseListCopyWithImpl<$Res,
          AttendanceRecordResponseList>;
  @useResult
  $Res call({List<AttendanceRecordResponse> data});
}

/// @nodoc
class _$AttendanceRecordResponseListCopyWithImpl<$Res,
        $Val extends AttendanceRecordResponseList>
    implements $AttendanceRecordResponseListCopyWith<$Res> {
  _$AttendanceRecordResponseListCopyWithImpl(this._value, this._then);

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
              as List<AttendanceRecordResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceRecordResponseListCopyWith<$Res>
    implements $AttendanceRecordResponseListCopyWith<$Res> {
  factory _$$_AttendanceRecordResponseListCopyWith(
          _$_AttendanceRecordResponseList value,
          $Res Function(_$_AttendanceRecordResponseList) then) =
      __$$_AttendanceRecordResponseListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AttendanceRecordResponse> data});
}

/// @nodoc
class __$$_AttendanceRecordResponseListCopyWithImpl<$Res>
    extends _$AttendanceRecordResponseListCopyWithImpl<$Res,
        _$_AttendanceRecordResponseList>
    implements _$$_AttendanceRecordResponseListCopyWith<$Res> {
  __$$_AttendanceRecordResponseListCopyWithImpl(
      _$_AttendanceRecordResponseList _value,
      $Res Function(_$_AttendanceRecordResponseList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AttendanceRecordResponseList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AttendanceRecordResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceRecordResponseList implements _AttendanceRecordResponseList {
  _$_AttendanceRecordResponseList(
      {final List<AttendanceRecordResponse> data = const []})
      : _data = data;

  factory _$_AttendanceRecordResponseList.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceRecordResponseListFromJson(json);

  final List<AttendanceRecordResponse> _data;
  @override
  @JsonKey()
  List<AttendanceRecordResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AttendanceRecordResponseList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceRecordResponseList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceRecordResponseListCopyWith<_$_AttendanceRecordResponseList>
      get copyWith => __$$_AttendanceRecordResponseListCopyWithImpl<
          _$_AttendanceRecordResponseList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceRecordResponseListToJson(
      this,
    );
  }
}

abstract class _AttendanceRecordResponseList
    implements AttendanceRecordResponseList {
  factory _AttendanceRecordResponseList(
          {final List<AttendanceRecordResponse> data}) =
      _$_AttendanceRecordResponseList;

  factory _AttendanceRecordResponseList.fromJson(Map<String, dynamic> json) =
      _$_AttendanceRecordResponseList.fromJson;

  @override
  List<AttendanceRecordResponse> get data;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceRecordResponseListCopyWith<_$_AttendanceRecordResponseList>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceRecordResponse _$AttendanceRecordResponseFromJson(
    Map<String, dynamic> json) {
  return _AttendanceRecordResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendanceRecordResponse {
  String? get regNo => throw _privateConstructorUsedError;
  String? get studentName => throw _privateConstructorUsedError;
  int? get subjectId => throw _privateConstructorUsedError;
  String? get subjectName => throw _privateConstructorUsedError;
  String get present => throw _privateConstructorUsedError;
  String? get absent => throw _privateConstructorUsedError;
  String? get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceRecordResponseCopyWith<AttendanceRecordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceRecordResponseCopyWith<$Res> {
  factory $AttendanceRecordResponseCopyWith(AttendanceRecordResponse value,
          $Res Function(AttendanceRecordResponse) then) =
      _$AttendanceRecordResponseCopyWithImpl<$Res, AttendanceRecordResponse>;
  @useResult
  $Res call(
      {String? regNo,
      String? studentName,
      int? subjectId,
      String? subjectName,
      String present,
      String? absent,
      String? percentage});
}

/// @nodoc
class _$AttendanceRecordResponseCopyWithImpl<$Res,
        $Val extends AttendanceRecordResponse>
    implements $AttendanceRecordResponseCopyWith<$Res> {
  _$AttendanceRecordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regNo = freezed,
    Object? studentName = freezed,
    Object? subjectId = freezed,
    Object? subjectName = freezed,
    Object? present = null,
    Object? absent = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      regNo: freezed == regNo
          ? _value.regNo
          : regNo // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      subjectName: freezed == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      present: null == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as String,
      absent: freezed == absent
          ? _value.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceRecordResponseCopyWith<$Res>
    implements $AttendanceRecordResponseCopyWith<$Res> {
  factory _$$_AttendanceRecordResponseCopyWith(
          _$_AttendanceRecordResponse value,
          $Res Function(_$_AttendanceRecordResponse) then) =
      __$$_AttendanceRecordResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? regNo,
      String? studentName,
      int? subjectId,
      String? subjectName,
      String present,
      String? absent,
      String? percentage});
}

/// @nodoc
class __$$_AttendanceRecordResponseCopyWithImpl<$Res>
    extends _$AttendanceRecordResponseCopyWithImpl<$Res,
        _$_AttendanceRecordResponse>
    implements _$$_AttendanceRecordResponseCopyWith<$Res> {
  __$$_AttendanceRecordResponseCopyWithImpl(_$_AttendanceRecordResponse _value,
      $Res Function(_$_AttendanceRecordResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regNo = freezed,
    Object? studentName = freezed,
    Object? subjectId = freezed,
    Object? subjectName = freezed,
    Object? present = null,
    Object? absent = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_$_AttendanceRecordResponse(
      regNo: freezed == regNo
          ? _value.regNo
          : regNo // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      subjectName: freezed == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      present: null == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as String,
      absent: freezed == absent
          ? _value.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceRecordResponse implements _AttendanceRecordResponse {
  _$_AttendanceRecordResponse(
      {this.regNo,
      this.studentName,
      this.subjectId,
      this.subjectName,
      required this.present,
      this.absent,
      this.percentage});

  factory _$_AttendanceRecordResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceRecordResponseFromJson(json);

  @override
  final String? regNo;
  @override
  final String? studentName;
  @override
  final int? subjectId;
  @override
  final String? subjectName;
  @override
  final String present;
  @override
  final String? absent;
  @override
  final String? percentage;

  @override
  String toString() {
    return 'AttendanceRecordResponse(regNo: $regNo, studentName: $studentName, subjectId: $subjectId, subjectName: $subjectName, present: $present, absent: $absent, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceRecordResponse &&
            (identical(other.regNo, regNo) || other.regNo == regNo) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
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
  int get hashCode => Object.hash(runtimeType, regNo, studentName, subjectId,
      subjectName, present, absent, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceRecordResponseCopyWith<_$_AttendanceRecordResponse>
      get copyWith => __$$_AttendanceRecordResponseCopyWithImpl<
          _$_AttendanceRecordResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceRecordResponseToJson(
      this,
    );
  }
}

abstract class _AttendanceRecordResponse implements AttendanceRecordResponse {
  factory _AttendanceRecordResponse(
      {final String? regNo,
      final String? studentName,
      final int? subjectId,
      final String? subjectName,
      required final String present,
      final String? absent,
      final String? percentage}) = _$_AttendanceRecordResponse;

  factory _AttendanceRecordResponse.fromJson(Map<String, dynamic> json) =
      _$_AttendanceRecordResponse.fromJson;

  @override
  String? get regNo;
  @override
  String? get studentName;
  @override
  int? get subjectId;
  @override
  String? get subjectName;
  @override
  String get present;
  @override
  String? get absent;
  @override
  String? get percentage;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceRecordResponseCopyWith<_$_AttendanceRecordResponse>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceRecord _$AttendanceRecordFromJson(Map<String, dynamic> json) {
  return _AttendanceRecord.fromJson(json);
}

/// @nodoc
mixin _$AttendanceRecord {
  List<Record> get records => throw _privateConstructorUsedError;
  String get teacherId => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;
  int get subjectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceRecordCopyWith<AttendanceRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceRecordCopyWith<$Res> {
  factory $AttendanceRecordCopyWith(
          AttendanceRecord value, $Res Function(AttendanceRecord) then) =
      _$AttendanceRecordCopyWithImpl<$Res, AttendanceRecord>;
  @useResult
  $Res call(
      {List<Record> records, String teacherId, int classId, int subjectId});
}

/// @nodoc
class _$AttendanceRecordCopyWithImpl<$Res, $Val extends AttendanceRecord>
    implements $AttendanceRecordCopyWith<$Res> {
  _$AttendanceRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? teacherId = null,
    Object? classId = null,
    Object? subjectId = null,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceRecordCopyWith<$Res>
    implements $AttendanceRecordCopyWith<$Res> {
  factory _$$_AttendanceRecordCopyWith(
          _$_AttendanceRecord value, $Res Function(_$_AttendanceRecord) then) =
      __$$_AttendanceRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Record> records, String teacherId, int classId, int subjectId});
}

/// @nodoc
class __$$_AttendanceRecordCopyWithImpl<$Res>
    extends _$AttendanceRecordCopyWithImpl<$Res, _$_AttendanceRecord>
    implements _$$_AttendanceRecordCopyWith<$Res> {
  __$$_AttendanceRecordCopyWithImpl(
      _$_AttendanceRecord _value, $Res Function(_$_AttendanceRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? teacherId = null,
    Object? classId = null,
    Object? subjectId = null,
  }) {
    return _then(_$_AttendanceRecord(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceRecord implements _AttendanceRecord {
  _$_AttendanceRecord(
      {final List<Record> records = const [],
      required this.teacherId,
      required this.classId,
      required this.subjectId})
      : _records = records;

  factory _$_AttendanceRecord.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceRecordFromJson(json);

  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final String teacherId;
  @override
  final int classId;
  @override
  final int subjectId;

  @override
  String toString() {
    return 'AttendanceRecord(records: $records, teacherId: $teacherId, classId: $classId, subjectId: $subjectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceRecord &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_records),
      teacherId,
      classId,
      subjectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceRecordCopyWith<_$_AttendanceRecord> get copyWith =>
      __$$_AttendanceRecordCopyWithImpl<_$_AttendanceRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceRecordToJson(
      this,
    );
  }
}

abstract class _AttendanceRecord implements AttendanceRecord {
  factory _AttendanceRecord(
      {final List<Record> records,
      required final String teacherId,
      required final int classId,
      required final int subjectId}) = _$_AttendanceRecord;

  factory _AttendanceRecord.fromJson(Map<String, dynamic> json) =
      _$_AttendanceRecord.fromJson;

  @override
  List<Record> get records;
  @override
  String get teacherId;
  @override
  int get classId;
  @override
  int get subjectId;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceRecordCopyWith<_$_AttendanceRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
