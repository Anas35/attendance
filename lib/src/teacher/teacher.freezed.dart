// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Teacher _$TeacherFromJson(Map<String, dynamic> json) {
  return _Teacher.fromJson(json);
}

/// @nodoc
mixin _$Teacher {
  int get teacherId => throw _privateConstructorUsedError;
  String get teacherName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get departmentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherCopyWith<Teacher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCopyWith<$Res> {
  factory $TeacherCopyWith(Teacher value, $Res Function(Teacher) then) =
      _$TeacherCopyWithImpl<$Res, Teacher>;
  @useResult
  $Res call(
      {int teacherId, String teacherName, String email, int departmentId});
}

/// @nodoc
class _$TeacherCopyWithImpl<$Res, $Val extends Teacher>
    implements $TeacherCopyWith<$Res> {
  _$TeacherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
    Object? teacherName = null,
    Object? email = null,
    Object? departmentId = null,
  }) {
    return _then(_value.copyWith(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeacherCopyWith<$Res> implements $TeacherCopyWith<$Res> {
  factory _$$_TeacherCopyWith(
          _$_Teacher value, $Res Function(_$_Teacher) then) =
      __$$_TeacherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int teacherId, String teacherName, String email, int departmentId});
}

/// @nodoc
class __$$_TeacherCopyWithImpl<$Res>
    extends _$TeacherCopyWithImpl<$Res, _$_Teacher>
    implements _$$_TeacherCopyWith<$Res> {
  __$$_TeacherCopyWithImpl(_$_Teacher _value, $Res Function(_$_Teacher) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
    Object? teacherName = null,
    Object? email = null,
    Object? departmentId = null,
  }) {
    return _then(_$_Teacher(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Teacher implements _Teacher {
  _$_Teacher(
      {required this.teacherId,
      required this.teacherName,
      required this.email,
      required this.departmentId});

  factory _$_Teacher.fromJson(Map<String, dynamic> json) =>
      _$$_TeacherFromJson(json);

  @override
  final int teacherId;
  @override
  final String teacherName;
  @override
  final String email;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'Teacher(teacherId: $teacherId, teacherName: $teacherName, email: $email, departmentId: $departmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Teacher &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, teacherId, teacherName, email, departmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeacherCopyWith<_$_Teacher> get copyWith =>
      __$$_TeacherCopyWithImpl<_$_Teacher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeacherToJson(
      this,
    );
  }
}

abstract class _Teacher implements Teacher {
  factory _Teacher(
      {required final int teacherId,
      required final String teacherName,
      required final String email,
      required final int departmentId}) = _$_Teacher;

  factory _Teacher.fromJson(Map<String, dynamic> json) = _$_Teacher.fromJson;

  @override
  int get teacherId;
  @override
  String get teacherName;
  @override
  String get email;
  @override
  int get departmentId;
  @override
  @JsonKey(ignore: true)
  _$$_TeacherCopyWith<_$_Teacher> get copyWith =>
      throw _privateConstructorUsedError;
}
