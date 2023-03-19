import 'package:attendance/src/departments/departments.dart';
import 'package:attendance/styles.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'select_input.dart';

class SelectDepartments extends ConsumerWidget {
  const SelectDepartments({this.departmentId, this.onChanged, super.key});

  final void Function(Department?)? onChanged;

  final int? departmentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Department>> depts = ref.watch(getDepartmentListProvider);
    return depts.when(
      data: (departments) {
        return SelectInput<Department>(
          value: departmentId == null
              ? null
              : departments.firstWhere((dept) => dept.departmentId == departmentId),
          hintText: 'Department',
          items: departments.map((department) {
            return DropdownMenuItem(
              value: department,
              child: Text(department.departmentName),
            );
          }).toList(),
          onChanged: onChanged,
        );
      },
      error: (e, _) => SelectInput(
        hintText: 'Select Department',
        items: [
          DropdownMenuItem(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('$e'),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.refresh),
                ),
              ],
            ),
          ),
        ],
      ),
      loading: () => const SelectInput(
        hintText: 'Select Department',
        items: [
          DropdownMenuItem(
            alignment: Alignment.center,
            child: Text('Loading'),
          ),
        ],
      ),
    );
  }
}
