import 'package:attendance/src/departments/departments.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FilterExpansionPanel extends StatefulWidget {
  const FilterExpansionPanel(
      {super.key, required this.titleText, required this.departments, required this.onChanged});

  final String titleText;

  final int departments;

  final void Function(int) onChanged;

  @override
  State<FilterExpansionPanel> createState() => _FilterExpansionPanelState();
}

class _FilterExpansionPanelState extends State<FilterExpansionPanel> {
  bool isExpand = false;

  late int selectedDepartment = widget.departments;

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      child: ExpansionPanelList(
        elevation: 0.0,
        expansionCallback: (panelIndex, isExpanded) {
          setState(() {
            isExpand = !isExpanded;
          });
        },
        children: [
          ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return Center(child: Text(widget.titleText, style: darkTitleStyle));
            },
            body: Consumer(builder: (context, ref, _) {
              final department = ref.watch(getDepartmentListProvider);
              return department.when(
                  data: (data) {
                    return Column(
                      children: data.map((dept) {
                        return CheckboxListTile(
                          title: Text(dept.departmentName, style: darkTitleStyle),
                          value: dept.departmentId == selectedDepartment,
                          onChanged: (value) {
                            setState(() {
                              if (value == true) {
                                selectedDepartment = dept.departmentId;
                              }
                            });
                            widget.onChanged(dept.departmentId);
                          },
                        );
                      }).toList(),
                    );
                  },
                  error: (e, _) => Center(child: Text('$e', style: headingStyle)),
                  loading: () =>
                      const Center(child: CircularProgressIndicator(color: lightTextColor)));
            }),
            isExpanded: isExpand,
          ),
        ],
      ),
    );
  }
}
