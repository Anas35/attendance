// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Class _$ClassFromJson(Map<String, dynamic> json) {
  return _Class.fromJson(json);
}

/// @nodoc
mixin _$Class {
  int get classId => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;
  String get mentor => throw _privateConstructorUsedError;
  int get departmentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassCopyWith<Class> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCopyWith<$Res> {
  factory $ClassCopyWith(Class value, $Res Function(Class) then) =
      _$ClassCopyWithImpl<$Res, Class>;
  @useResult
  $Res call({int classId, String className, String mentor, int departmentId});
}

/// @nodoc
class _$ClassCopyWithImpl<$Res, $Val extends Class>
    implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? className = null,
    Object? mentor = null,
    Object? departmentId = null,
  }) {
    return _then(_value.copyWith(
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      mentor: null == mentor
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassCopyWith<$Res> implements $ClassCopyWith<$Res> {
  factory _$$_ClassCopyWith(_$_Class value, $Res Function(_$_Class) then) =
      __$$_ClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int classId, String className, String mentor, int departmentId});
}

/// @nodoc
class __$$_ClassCopyWithImpl<$Res> extends _$ClassCopyWithImpl<$Res, _$_Class>
    implements _$$_ClassCopyWith<$Res> {
  __$$_ClassCopyWithImpl(_$_Class _value, $Res Function(_$_Class) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? className = null,
    Object? mentor = null,
    Object? departmentId = null,
  }) {
    return _then(_$_Class(
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      mentor: null == mentor
          ? _value.mentor
          : mentor // ignore: cast_nullable_to_non_nullable
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
class _$_Class implements _Class {
  const _$_Class(
      {required this.classId,
      required this.className,
      required this.mentor,
      required this.departmentId});

  factory _$_Class.fromJson(Map<String, dynamic> json) =>
      _$$_ClassFromJson(json);

  @override
  final int classId;
  @override
  final String className;
  @override
  final String mentor;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'Class(classId: $classId, className: $className, mentor: $mentor, departmentId: $departmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Class &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.mentor, mentor) || other.mentor == mentor) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, classId, className, mentor, departmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      __$$_ClassCopyWithImpl<_$_Class>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassToJson(
      this,
    );
  }
}

abstract class _Class implements Class {
  const factory _Class(
      {required final int classId,
      required final String className,
      required final String mentor,
      required final int departmentId}) = _$_Class;

  factory _Class.fromJson(Map<String, dynamic> json) = _$_Class.fromJson;

  @override
  int get classId;
  @override
  String get className;
  @override
  String get mentor;
  @override
  int get departmentId;
  @override
  @JsonKey(ignore: true)
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassList _$ClassListFromJson(Map<String, dynamic> json) {
  return _ClassList.fromJson(json);
}

/// @nodoc
mixin _$ClassList {
  List<Class> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassListCopyWith<ClassList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassListCopyWith<$Res> {
  factory $ClassListCopyWith(ClassList value, $Res Function(ClassList) then) =
      _$ClassListCopyWithImpl<$Res, ClassList>;
  @useResult
  $Res call({List<Class> data});
}

/// @nodoc
class _$ClassListCopyWithImpl<$Res, $Val extends ClassList>
    implements $ClassListCopyWith<$Res> {
  _$ClassListCopyWithImpl(this._value, this._then);

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
              as List<Class>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassListCopyWith<$Res> implements $ClassListCopyWith<$Res> {
  factory _$$_ClassListCopyWith(
          _$_ClassList value, $Res Function(_$_ClassList) then) =
      __$$_ClassListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Class> data});
}

/// @nodoc
class __$$_ClassListCopyWithImpl<$Res>
    extends _$ClassListCopyWithImpl<$Res, _$_ClassList>
    implements _$$_ClassListCopyWith<$Res> {
  __$$_ClassListCopyWithImpl(
      _$_ClassList _value, $Res Function(_$_ClassList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ClassList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Class>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassList implements _ClassList {
  const _$_ClassList({required final List<Class> data}) : _data = data;

  factory _$_ClassList.fromJson(Map<String, dynamic> json) =>
      _$$_ClassListFromJson(json);

  final List<Class> _data;
  @override
  List<Class> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ClassList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassListCopyWith<_$_ClassList> get copyWith =>
      __$$_ClassListCopyWithImpl<_$_ClassList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassListToJson(
      this,
    );
  }
}

abstract class _ClassList implements ClassList {
  const factory _ClassList({required final List<Class> data}) = _$_ClassList;

  factory _ClassList.fromJson(Map<String, dynamic> json) =
      _$_ClassList.fromJson;

  @override
  List<Class> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ClassListCopyWith<_$_ClassList> get copyWith =>
      throw _privateConstructorUsedError;
}
