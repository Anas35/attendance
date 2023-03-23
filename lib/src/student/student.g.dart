// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Student _$$_StudentFromJson(Map<String, dynamic> json) => _$_Student(
      regNo: json['regNo'] as String,
      studentName: json['studentName'] as String,
      email: json['email'] as String,
      rollNo: json['rollNo'] as int,
      departmentId: json['departmentId'] as int,
      classId: json['classId'] as int,
    );

Map<String, dynamic> _$$_StudentToJson(_$_Student instance) =>
    <String, dynamic>{
      'regNo': instance.regNo,
      'studentName': instance.studentName,
      'email': instance.email,
      'rollNo': instance.rollNo,
      'departmentId': instance.departmentId,
      'classId': instance.classId,
    };

_$_StudentList _$$_StudentListFromJson(Map<String, dynamic> json) =>
    _$_StudentList(
      data: (json['data'] as List<dynamic>)
          .map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StudentListToJson(_$_StudentList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getStudentListHash() => r'd245a2406df35d08e1ec797ac37306cf7516372c';

/// See also [getStudentList].
@ProviderFor(getStudentList)
final getStudentListProvider =
    AutoDisposeFutureProvider<List<Student>>.internal(
  getStudentList,
  name: r'getStudentListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getStudentListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetStudentListRef = AutoDisposeFutureProviderRef<List<Student>>;
String _$studentStateHash() => r'56b780792fdde35b94dcef87026af530519a09e4';

/// See also [StudentState].
@ProviderFor(StudentState)
final studentStateProvider =
    AsyncNotifierProvider<StudentState, Student>.internal(
  StudentState.new,
  name: r'studentStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$studentStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$StudentState = AsyncNotifier<Student>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
