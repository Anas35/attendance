import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/subject/subject.dart';
import 'package:attendance/src/teacher/teacher.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/loading.dart';
import 'package:attendance/widgets/page_card.dart';
import 'package:attendance/widgets/pop_back.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubjectView extends ConsumerWidget {
  const SubjectView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(teacherStateProvider).valueOrNull;
    final subjectList = ref.watch(GetSubjectListProvider());

    return subjectList.when(
      data: (data) {
        final list = data.where((sub) => sub.departmentId == profile!.department.departmentId).toList();
        return GradientScaffold(
          appBar: const PopBackAppBar(),
          body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListCard(
                label: list[index].subjectName,
                onTap: () {
                  ref.read(selectedSubjectProvider.notifier).updateSubject(list[index]);
                  context.pushNamed(AppRoutes.takeAttendance);
                },
              );
            },
          ),
        );
      },
      error: (error, stackTrace) => Text('$error'),
      loading: () => const Loading(),
    );
  }
}
