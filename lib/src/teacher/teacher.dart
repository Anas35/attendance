import 'dart:io';

import 'package:attendance/src/data/data.dart';
import 'package:attendance/src/departments/departments.dart';
import 'package:attendance/src/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'teacher.g.dart';

part 'teacher.freezed.dart';

@Riverpod(keepAlive: true)
class TeacherState extends _$TeacherState {

  @override
  Future<Teacher> build() async {
    state = const AsyncLoading();

    final repositoy = ref.watch(repositoryProvider);
    final data = ref.watch(dataStateProvider);
    
    final json = await repositoy.getProfile(data!);
    return Teacher.fromJson(json['data'] as Map<String, Object?>);
  }

  
  Future<void> updateTeacherData(Map<String, String> inputData, File? file) async {
    state = const AsyncLoading();
    final repositoy = ref.watch(repositoryProvider);
    final data = ref.watch(dataStateProvider);

    state = await AsyncValue.guard(() async {
      final json = await repositoy.updateProfile(inputData, file, data!);
       return Teacher.fromJson(json['data'] as Map<String, Object?>);
    });
  }
}

@freezed
class Teacher with _$Teacher {
  factory Teacher({
    required int teacherId,
    required String teacherName,
    required String email,
    required Department department,
  }) = _Teacher;

  factory Teacher.fromJson(Map<String, Object?> json) => _$TeacherFromJson(json);
}
