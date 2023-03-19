// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  int get departmentId => throw _privateConstructorUsedError;
  String get departmentName => throw _privateConstructorUsedError;
  String get headOfDepartment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res, Department>;
  @useResult
  $Res call({int departmentId, String departmentName, String headOfDepartment});
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res, $Val extends Department>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
    Object? departmentName = null,
    Object? headOfDepartment = null,
  }) {
    return _then(_value.copyWith(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentName: null == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      headOfDepartment: null == headOfDepartment
          ? _value.headOfDepartment
          : headOfDepartment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentCopyWith<$Res>
    implements $DepartmentCopyWith<$Res> {
  factory _$$_DepartmentCopyWith(
          _$_Department value, $Res Function(_$_Department) then) =
      __$$_DepartmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int departmentId, String departmentName, String headOfDepartment});
}

/// @nodoc
class __$$_DepartmentCopyWithImpl<$Res>
    extends _$DepartmentCopyWithImpl<$Res, _$_Department>
    implements _$$_DepartmentCopyWith<$Res> {
  __$$_DepartmentCopyWithImpl(
      _$_Department _value, $Res Function(_$_Department) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
    Object? departmentName = null,
    Object? headOfDepartment = null,
  }) {
    return _then(_$_Department(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentName: null == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      headOfDepartment: null == headOfDepartment
          ? _value.headOfDepartment
          : headOfDepartment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Department implements _Department {
  const _$_Department(
      {required this.departmentId,
      required this.departmentName,
      required this.headOfDepartment});

  factory _$_Department.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentFromJson(json);

  @override
  final int departmentId;
  @override
  final String departmentName;
  @override
  final String headOfDepartment;

  @override
  String toString() {
    return 'Department(departmentId: $departmentId, departmentName: $departmentName, headOfDepartment: $headOfDepartment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Department &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.departmentName, departmentName) ||
                other.departmentName == departmentName) &&
            (identical(other.headOfDepartment, headOfDepartment) ||
                other.headOfDepartment == headOfDepartment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, departmentId, departmentName, headOfDepartment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentCopyWith<_$_Department> get copyWith =>
      __$$_DepartmentCopyWithImpl<_$_Department>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentToJson(
      this,
    );
  }
}

abstract class _Department implements Department {
  const factory _Department(
      {required final int departmentId,
      required final String departmentName,
      required final String headOfDepartment}) = _$_Department;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$_Department.fromJson;

  @override
  int get departmentId;
  @override
  String get departmentName;
  @override
  String get headOfDepartment;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentCopyWith<_$_Department> get copyWith =>
      throw _privateConstructorUsedError;
}

DepartmentList _$DepartmentListFromJson(Map<String, dynamic> json) {
  return _DepartmentList.fromJson(json);
}

/// @nodoc
mixin _$DepartmentList {
  List<Department> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentListCopyWith<DepartmentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentListCopyWith<$Res> {
  factory $DepartmentListCopyWith(
          DepartmentList value, $Res Function(DepartmentList) then) =
      _$DepartmentListCopyWithImpl<$Res, DepartmentList>;
  @useResult
  $Res call({List<Department> data});
}

/// @nodoc
class _$DepartmentListCopyWithImpl<$Res, $Val extends DepartmentList>
    implements $DepartmentListCopyWith<$Res> {
  _$DepartmentListCopyWithImpl(this._value, this._then);

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
              as List<Department>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentListCopyWith<$Res>
    implements $DepartmentListCopyWith<$Res> {
  factory _$$_DepartmentListCopyWith(
          _$_DepartmentList value, $Res Function(_$_DepartmentList) then) =
      __$$_DepartmentListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Department> data});
}

/// @nodoc
class __$$_DepartmentListCopyWithImpl<$Res>
    extends _$DepartmentListCopyWithImpl<$Res, _$_DepartmentList>
    implements _$$_DepartmentListCopyWith<$Res> {
  __$$_DepartmentListCopyWithImpl(
      _$_DepartmentList _value, $Res Function(_$_DepartmentList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_DepartmentList(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Department>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepartmentList implements _DepartmentList {
  const _$_DepartmentList({required final List<Department> data})
      : _data = data;

  factory _$_DepartmentList.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentListFromJson(json);

  final List<Department> _data;
  @override
  List<Department> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DepartmentList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentListCopyWith<_$_DepartmentList> get copyWith =>
      __$$_DepartmentListCopyWithImpl<_$_DepartmentList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentListToJson(
      this,
    );
  }
}

abstract class _DepartmentList implements DepartmentList {
  const factory _DepartmentList({required final List<Department> data}) =
      _$_DepartmentList;

  factory _DepartmentList.fromJson(Map<String, dynamic> json) =
      _$_DepartmentList.fromJson;

  @override
  List<Department> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentListCopyWith<_$_DepartmentList> get copyWith =>
      throw _privateConstructorUsedError;
}
