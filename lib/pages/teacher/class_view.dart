import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/class/class.dart';
import 'package:attendance/src/teacher/teacher.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/loading.dart';
import 'package:attendance/widgets/page_card.dart';
import 'package:attendance/widgets/pop_back.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ClassView extends ConsumerWidget {
  const ClassView({required this.isViewAttendance, super.key});

  final bool isViewAttendance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(teacherStateProvider).valueOrNull;
    final classList = ref.watch(GetClassListProvider());

    return classList.when(
      loading: () => const Loading(),
      data: (data) {
        final list = data.where((cls) => cls.departmentId == profile!.departmentId).toList();

        return Scaffold(
          appBar: const PopBackAppBar(),
          body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListCard(
                label: list[index].className,
                onTap: () {
                  ref.read(selectedClassProvider.notifier).updateClass(list[index]);
                  if (isViewAttendance) {
                    context.pushNamed(AppRoutes.viewClassAttendance,
                        arguments: list[index].classId);
                  } else {
                    context.pushNamed(AppRoutes.subjectView);
                  }
                },
              );
            },
          ),
        );
      },
      error: (error, stackTrace) => Text('$error'),
    );
  }
}
