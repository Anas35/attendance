import 'package:attendance/src/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'today_attendance.g.dart';
part 'today_attendance.freezed.dart';

@riverpod
Future<TodayAttendanceList> getTodayStudentRecords(GetTodayStudentRecordsRef ref, {required String regNo, DateTime? date}) async {
  final repository = ref.watch(repositoryProvider);
  return await repository.viewTodayStudentAttendance(regNo: regNo, date: date);
}

@freezed
class TodayAttendanceList with _$TodayAttendanceList {

  factory TodayAttendanceList({
    @Default([])
    List<TodayAttendance> data,
  }) = _TodayAttendanceList;

  factory TodayAttendanceList.fromJson(Map<String, Object?> json) => _$TodayAttendanceListFromJson(json);

}

@freezed
class TodayAttendance with _$TodayAttendance {

  factory TodayAttendance({
    required int subjectId,
    required String subjectName,
    required int isPresent,
  }) = _TodayAttendance;

  factory TodayAttendance.fromJson(Map<String, Object?> json) => _$TodayAttendanceFromJson(json);

}