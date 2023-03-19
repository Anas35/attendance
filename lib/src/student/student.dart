import 'dart:io';

import 'package:attendance/src/class/class.dart';
import 'package:attendance/src/data/data.dart';
import 'package:attendance/src/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'student.g.dart';

part 'student.freezed.dart';

@riverpod
Future<List<Student>> getStudentList(GetStudentListRef ref) async {
  final repo = ref.read(repositoryProvider);
  final selectedClass = ref.watch(selectedClassProvider);
  final data = ref.watch(dataStateProvider);

  return await repo.getStudents(
    classId: selectedClass!.classId,
    token: data!.token,
  );
}

@Riverpod(keepAlive: true, dependencies: [repository])
class StudentState extends _$StudentState {

  @override
  Future<Student> build() async {
    state = const AsyncLoading();

    final repositoy = ref.watch(repositoryProvider);
    final data = ref.watch(dataStateProvider);
    
    final json = await repositoy.getProfile(data!);
    return Student.fromJson(json['data'] as Map<String, Object?>);
  }

  Future<void> updateStudentData(Map<String, String> inputData, File? file) async {
    state = const AsyncLoading();
    final repositoy = ref.watch(repositoryProvider);
    final data = ref.watch(dataStateProvider);

    state = await AsyncValue.guard(() async {
      final json = await repositoy.updateProfile(inputData, file, data!);
       return Student.fromJson(json['data'] as Map<String, Object?>);
    });
  }
}

@freezed
class Student with _$Student {
  factory Student({
    required String regNo,
    required String studentName,
    required String email,
    required int rollNo,
    required int departmentId,
    required int classId,
  }) = _Student;

  factory Student.fromJson(Map<String, Object?> json) => _$StudentFromJson(json);
}

@freezed
class StudentList with _$StudentList {

  const factory StudentList({
    required List<Student> data,
  }) = _StudentList;

  factory StudentList.fromJson(Map<String, Object?> json) => _$StudentListFromJson(json);

}