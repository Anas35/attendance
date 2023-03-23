import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/class/class.dart';
import 'package:attendance/src/departments/departments.dart';
import 'package:attendance/src/teacher/teacher.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/filter_expansion_panel.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/loading.dart';
import 'package:attendance/widgets/page_card.dart';
import 'package:attendance/widgets/pop_back.dart';
import 'package:attendance/widgets/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ClassView extends ConsumerStatefulWidget {
  const ClassView({required this.isViewAttendance, super.key});

  final bool isViewAttendance;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ClassViewState();
}

class _ClassViewState extends ConsumerState<ClassView> {
  int? selectedDept;

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(teacherStateProvider).requireValue;
    final classList = ref.watch(GetClassListProvider());
    final department = ref.watch(getDepartmentListProvider);

    selectedDept ??= profile.departmentId;

    return classList.when(
      loading: () => const Loading(),
      data: (data) {
        final list = data.where((cls) => cls.departmentId == selectedDept).toList();
        return GradientScaffold(
          appBar: const PopBackAppBar(),
          drawer: Drawer(
            backgroundColor: primaryColor,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Filter', style: headingStyle),
                ),
                const Divider(endIndent: 10, indent: 10),
                ShadowContainer(
                  child: Column(
                    children: [
                      const Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Departments', style: darkTitleStyle),
                      )),
                      department.when(
                        data: (data) {
                          return Column(
                            children: data.map((dept) {
                              return CheckboxListTile(
                                title: Text(dept.departmentName, style: darkTitleStyle),
                                value: selectedDept == dept.departmentId,
                                onChanged: (value) {
                                  setState(() {
                                    if (value == true) {
                                      selectedDept = dept.departmentId;
                                    }
                                    Navigator.pop(context);
                                  });
                                },
                              );
                            }).toList(),
                          );
                        },
                        error: (e, _) => Center(child: Text('$e', style: headingStyle)),
                        loading: () => const Center(
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: CircularProgressIndicator(color: darkTextColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListCard(
                label: list[index].className,
                onTap: () {
                  ref.read(selectedClassProvider.notifier).updateClass(list[index]);
                  if (widget.isViewAttendance) {
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
