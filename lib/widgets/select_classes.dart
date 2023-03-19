import 'package:attendance/src/class/class.dart';
import 'package:attendance/src/departments/departments.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'select_input.dart';

class SelectClasses extends ConsumerWidget {
  const SelectClasses({this.departmentId, this.classId, this.onChanged, super.key});

  final void Function(Class?)? onChanged;

  final int? classId;
  final int? departmentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final depts = ref.watch(selectedDepartmentProvider);

    if (depts == null && departmentId == null) {
      return const SelectInput(hintText: 'Class');
    }

    final classList = ref.watch(GetClassListProvider(departmentId: depts?.departmentId ?? departmentId));

    return classList.when(
      data: (classes) {
        return SelectInput<Class>(
          value: classId == null ? null : classes.firstWhere((cls) => cls.classId == classId),
          hintText: 'Class',
          items: classes.map((cls) {
            return DropdownMenuItem(
              value: cls,
              child: Text(cls.className),
            );
          }).toList(),
          onChanged: onChanged,
        );
      },
      error: (e, _) => Text('$e'),
      loading: () => const SelectInput(hintText: 'Loading'),
    );
  }
}
