import 'package:attendance/src/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@riverpod
Future<List<Class>> getClassList(GetClassListRef ref, {int? departmentId}) async {
  final repo = ref.read(repositoryProvider);
  return await repo.getClasses(departmentId: departmentId);
}

@riverpod
class SelectedClass extends _$SelectedClass {

  KeepAliveLink? alive;

  @override
  Class? build() => null;

  void updateClass(Class newClass) {
    alive ??= ref.keepAlive();
    state = newClass;
  }

  void close() => alive?.close();
}


@freezed
class Class with _$Class {

  const factory Class({
    required int classId,
    required String className,
    required String mentor,
    required int departmentId,
  }) = _Class;

  factory Class.fromJson(Map<String, Object?> json) => _$ClassFromJson(json);

}

@freezed
class ClassList with _$ClassList {

  const factory ClassList({
    required List<Class> data,
  }) = _ClassList;

  factory ClassList.fromJson(Map<String, Object?> json) => _$ClassListFromJson(json);

}
