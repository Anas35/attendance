import 'package:attendance/src/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'departments.freezed.dart';
part 'departments.g.dart';

@riverpod
Future<List<Department>> getDepartmentList(GetDepartmentListRef ref) async {
  final repo = ref.read(repositoryProvider);
  return await repo.getDepartments();
}

@riverpod
class SelectedDepartment extends _$SelectedDepartment {

  @override
  Department? build() => null;

  void updateDept(Department dept) {
    state = dept;
  }
}

@freezed
class Department with _$Department {

  const factory Department({
    required int departmentId,
    required String departmentName,
    required String headOfDepartment,
  }) = _Department;

  factory Department.fromJson(Map<String, Object?> json) => _$DepartmentFromJson(json);

}

@freezed
class DepartmentList with _$DepartmentList {

  const factory DepartmentList({
    required List<Department> data,
  }) = _DepartmentList;

  factory DepartmentList.fromJson(Map<String, Object?> json) => _$DepartmentListFromJson(json);

}
