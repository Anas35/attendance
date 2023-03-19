// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  String get regNo => throw _privateConstructorUsedError;
  String get studentName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get rollNo => throw _privateConstructorUsedError;
  int get departmentId => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {String regNo,
      String studentName,
      String email,
      int rollNo,
      int departmentId,
      int classId});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regNo = null,
    Object? studentName = null,
    Object? email = null,
    Object? rollNo = null,
    Object? departmentId = null,
    Object? classId = null,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      rollNo: null == rollNo
          ? _value.rollNo
          : rollNo // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$_StudentCopyWith(
          _$_Student value, $Res Function(_$_Student) then) =
      __$$_StudentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String regNo,
      String studentName,
      String email,
      int rollNo,
      int departmentId,
      int classId});
}

/// @nodoc
class __$$_StudentCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$_Student>
    implements _$$_StudentCopyWith<$Res> {
  __$$_StudentCopyWithImpl(_$_Student _value, $Res Function(_$_Student) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regNo = null,
    Object? studentName = null,
    Object? email = null,
    Object? rollNo = null,
    Object? departmentId = null,
    Object? classId = null,
  }) {
    return _then(_$_Student(
      regNo: null == regNo
          ? _value.regNo
          : regNo // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      rollNo: null == rollNo
          ? _value.rollNo
          : rollNo // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Student implements _Student {
  _$_Student(
      {required this.regNo,
      required this.studentName,
      required this.email,
      required this.rollNo,
      required this.departmentId,
      required this.classId});

  factory _$_Student.fromJson(Map<String, dynamic> json) =>
      _$$_StudentFromJson(json);

  @override
  final String regNo;
  @override
  final String studentName;
  @override
  final String email;
  @override
  final int rollNo;
  @override
  final int departmentId;
  @override
  final int classId;

  @override
  String toString() {
    return 'Student(regNo: $regNo, studentName: $studentName, email: $email, rollNo: $rollNo, departmentId: $departmentId, classId: $classId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Student &&
            (identical(other.regNo, regNo) || other.regNo == regNo) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rollNo, rollNo) || other.rollNo == rollNo) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, regNo, studentName, email, rollNo, departmentId, classId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentCopyWith<_$_Student> get copyWith =>
      __$$_StudentCopyWithImpl<_$_Student>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  factory _Student(
      {required final String regNo,
      required final String studentName,
      required final String email,
      required final int rollNo,
      required final int departmentId,
      required final int classId}) = _$_Student;

  factory _Student.fromJson(Map<String, dynamic> json) = _$_Student.fromJson;

  @override
  String get regNo;
  @override
  String get studentName;
  @override
  String get email;
  @override
  int get rollNo;
  @override
  int get departmentId;
  @override
  int get classId;
  @override
  @JsonKey(ignore: true)
  _$$_StudentCopyWith<_$_Student> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentList _$StudentListFromJson(Map<String, dynamic> json) {
  return _StudentList.fromJson(json);
}

/// @nodoc
mixin _$StudentList {
  List<Student> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentListCopyWith<StudentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentListCopyWith<$Res> {
  factory $StudentListCopyWith(
          StudentList value, $Res Function(StudentList) then) =
      _$StudentListCopyWithImpl<$Res, StudentList>;
  @useResult
  $Res call({List<Student> data});
}

/// @nodoc
class _$StudentListCopyWithImpl<$Res, $Val extends StudentList>
    implements $StudentListCopyWith<$Res> {
  _$StudentListCopyWithImpl(this._value, this._then);

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
              as List<Student>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentListCopyWith<$Res>
    implements $StudentListCopyWith<$Res> {
  factory _$$_StudentListCopyWith(
          _$_StudentList value, $Res Function(_$_StudentList) then) =
      __$$_StudentListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Student> data});
}

/// @nodoc
class __$$_StudentListCopyWithImpl<$Res>
    extends _$StudentListCopyWithImpl<$Res, _$_StudentList>
    implements _$$_StudentListCopyWith<$Res> {
  __$$_StudentListCopyWithImpl(
      _$_StudentList _value, $Res Function(_$_StudentList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_StudentList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentList implements _StudentList {
  const _$_StudentList({required final List<Student> data}) : _data = data;

  factory _$_StudentList.fromJson(Map<String, dynamic> json) =>
      _$$_StudentListFromJson(json);

  final List<Student> _data;
  @override
  List<Student> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'StudentList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentListCopyWith<_$_StudentList> get copyWith =>
      __$$_StudentListCopyWithImpl<_$_StudentList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentListToJson(
      this,
    );
  }
}

abstract class _StudentList implements StudentList {
  const factory _StudentList({required final List<Student> data}) =
      _$_StudentList;

  factory _StudentList.fromJson(Map<String, dynamic> json) =
      _$_StudentList.fromJson;

  @override
  List<Student> get data;
  @override
  @JsonKey(ignore: true)
  _$$_StudentListCopyWith<_$_StudentList> get copyWith =>
      throw _privateConstructorUsedError;
}
