import 'package:attendance/src/class/class.dart';
import 'package:attendance/src/data/data.dart';
import 'package:attendance/src/repository.dart';
import 'package:attendance/src/subject/subject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'record.g.dart';
part 'record.freezed.dart';

@riverpod
Future<AttendanceRecordResponseList> getClassRecords(GetClassRecordsRef ref, {required int classId}) async {
  final repository = ref.watch(repositoryProvider);
  return await repository.viewClassAttedance(classId: classId);
}

@riverpod
Future<AttendanceRecordResponseList> getStudentRecords(GetStudentRecordsRef ref, {required String regNo, DateTime? fromDate, DateTime? until}) async {
  final repository = ref.watch(repositoryProvider);
  return await repository.viewStudentAttendance(regNo: regNo, from: fromDate, until: until);
}

@riverpod
Future<AttendanceRecordResponseList> getTodayStudentRecords(GetTodayStudentRecordsRef ref, {required String regNo}) async {
  final repository = ref.watch(repositoryProvider);
  return await repository.viewTodayStudentAttendance(regNo: regNo);
}

@riverpod
class RecordState extends _$RecordState {

  @override
  Future<bool> build() async {
    return false;
  }

  void submit(List<Record> records) async {
    state = const AsyncLoading();

    final data = ref.watch(dataStateProvider);
    final classId = ref.watch(selectedClassProvider)!.classId;
    final subjectId = ref.watch(selectedSubjectProvider)!.subjectId;

    final attendance = AttendanceRecord(
      teacherId: data!.id, 
      classId: classId, 
      subjectId: subjectId, 
      records: records,
    );

    state = await AsyncValue.guard(() async {
      await ref.read(repositoryProvider).takeAttedance(attendance: attendance, token: data.token);
      return true;
    });

    ref.read(selectedClassProvider.notifier).close();
    ref.read(selectedSubjectProvider.notifier).close();
  }
}

@freezed
class AttendanceRecordResponseList with _$AttendanceRecordResponseList {

  factory AttendanceRecordResponseList({
    @Default([])
    List<AttendanceRecordResponse> data,
  }) = _AttendanceRecordResponseList;

  factory AttendanceRecordResponseList.fromJson(Map<String, Object?> json) => _$AttendanceRecordResponseListFromJson(json);

}

@freezed
class AttendanceRecordResponse with _$AttendanceRecordResponse {

  factory AttendanceRecordResponse({
    String? regNo,
    String? studentName,
    int? subjectId,
    String? subjectName,
    required String present,
    String? absent,
    String? percentage,
  }) = _AttendanceRecordResponse;

  factory AttendanceRecordResponse.fromJson(Map<String, Object?> json) => _$AttendanceRecordResponseFromJson(json);

}


@freezed
class AttendanceRecord with _$AttendanceRecord {

  factory AttendanceRecord({
    @Default([])
    List<Record> records,
    required String teacherId,
    required int classId,
    required int subjectId
  }) = _AttendanceRecord;

  factory AttendanceRecord.fromJson(Map<String, Object?> json) => _$AttendanceRecordFromJson(json);

}

@JsonSerializable()
class Record {

  final String regNo;
  
  final bool present;

  Record({
    required this.regNo,
    required this.present
  });

  Record update({bool? present}) {
    return Record(
      regNo: regNo,
      present: present ?? this.present,
    );
  }

  factory Record.fromJson(Map<String, Object?> json) => _$RecordFromJson(json);

  
  Map<String, dynamic> toJson() => _$RecordToJson(this);

  @override
  String toString() {
    return '${toJson()}';
  }

}