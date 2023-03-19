import 'package:attendance/src/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subject.g.dart';

@riverpod
Future<List<Subject>> getSubjectList(GetSubjectListRef ref, {int? departmentId}) async {
  final repo = ref.read(repositoryProvider);
  return await repo.getSubjects(departmentId: departmentId);
}

@riverpod
class SelectedSubject extends _$SelectedSubject {

  KeepAliveLink? alive;

  @override
  Subject? build() => null;

  void updateSubject(Subject newSubject) {
    state = newSubject;
    alive ??= ref.keepAlive();
  }

  void close() => alive?.close();
}


@JsonSerializable()
class Subject {

  final int subjectId;
  final String subjectName;
  final int departmentId;

  factory Subject.fromJson(Map<String, Object?> json) => _$SubjectFromJson(json);

  const Subject({
    required this.subjectId, 
    required this.subjectName, 
    required this.departmentId
  });

  Map<String, dynamic> toJson() => _$SubjectToJson(this);

  @override
  String toString() {
    return '${toJson()}';
  }

}

@JsonSerializable()
class SubjectList {

  final List<Subject> data;

  const SubjectList({
    required this.data,
  });

  factory SubjectList.fromJson(Map<String, Object?> json) => _$SubjectListFromJson(json);

}
