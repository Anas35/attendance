import 'package:attendance/src/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'student_attendance.g.dart';
part 'student_attendance.freezed.dart';

@riverpod
Future<StudentAttendance> getStudentRecords(GetStudentRecordsRef ref, {required String regNo, DateTime? fromDate, DateTime? until}) async {
  final repository = ref.watch(repositoryProvider);
  return await repository.viewStudentAttendance(regNo: regNo, from: fromDate, until: until);
}

@freezed
class StudentAttendance with _$StudentAttendance {

  factory StudentAttendance({
    required String regNo,
    required String studentName,
    required String present,
    required String absent,
    required String percentage,
    @Default([])
    List<SubjectAttendance> records,
  }) = _StudentAttendance;

  factory StudentAttendance.fromJson(Map<String, Object?> json) => _$StudentAttendanceFromJson(json);

}

@freezed
class SubjectAttendance with _$SubjectAttendance {

  factory SubjectAttendance({
    required int subjectId,
    required String subjectName,
    required String present,
    required String absent,
    required String percentage,
  }) = _SubjectAttendance;

  factory SubjectAttendance.fromJson(Map<String, Object?> json) => _$SubjectAttendanceFromJson(json);

}