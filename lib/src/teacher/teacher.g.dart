// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Teacher _$$_TeacherFromJson(Map<String, dynamic> json) => _$_Teacher(
      teacherId: json['teacherId'] as int,
      teacherName: json['teacherName'] as String,
      email: json['email'] as String,
      department:
          Department.fromJson(json['department'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeacherToJson(_$_Teacher instance) =>
    <String, dynamic>{
      'teacherId': instance.teacherId,
      'teacherName': instance.teacherName,
      'email': instance.email,
      'department': instance.department,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$teacherStateHash() => r'd335260d5488e763db4f8c497e16a6282d97dede';

/// See also [TeacherState].
@ProviderFor(TeacherState)
final teacherStateProvider =
    AsyncNotifierProvider<TeacherState, Teacher>.internal(
  TeacherState.new,
  name: r'teacherStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$teacherStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TeacherState = AsyncNotifier<Teacher>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
