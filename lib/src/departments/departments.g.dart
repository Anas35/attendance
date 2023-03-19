// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Department _$$_DepartmentFromJson(Map<String, dynamic> json) =>
    _$_Department(
      departmentId: json['departmentId'] as int,
      departmentName: json['departmentName'] as String,
      headOfDepartment: json['headOfDepartment'] as String,
    );

Map<String, dynamic> _$$_DepartmentToJson(_$_Department instance) =>
    <String, dynamic>{
      'departmentId': instance.departmentId,
      'departmentName': instance.departmentName,
      'headOfDepartment': instance.headOfDepartment,
    };

_$_DepartmentList _$$_DepartmentListFromJson(Map<String, dynamic> json) =>
    _$_DepartmentList(
      data: (json['data'] as List<dynamic>)
          .map((e) => Department.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DepartmentListToJson(_$_DepartmentList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getDepartmentListHash() => r'654d93d6689bde82e5652cde06ca9eeefdbc482c';

/// See also [getDepartmentList].
@ProviderFor(getDepartmentList)
final getDepartmentListProvider =
    AutoDisposeFutureProvider<List<Department>>.internal(
  getDepartmentList,
  name: r'getDepartmentListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getDepartmentListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetDepartmentListRef = AutoDisposeFutureProviderRef<List<Department>>;
String _$selectedDepartmentHash() =>
    r'6f7fe9ca79c55fa226dd0ac1fdb72e1a6821a411';

/// See also [SelectedDepartment].
@ProviderFor(SelectedDepartment)
final selectedDepartmentProvider =
    AutoDisposeNotifierProvider<SelectedDepartment, Department?>.internal(
  SelectedDepartment.new,
  name: r'selectedDepartmentProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedDepartmentHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedDepartment = AutoDisposeNotifier<Department?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
