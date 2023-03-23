import 'package:attendance/src/record/today_attendance.dart';
import 'package:attendance/src/student/student.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/pop_back.dart';
import 'package:attendance/widgets/semi_title_text.dart';
import 'package:attendance/widgets/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewTodayAttendance extends ConsumerWidget {
  
  const ViewTodayAttendance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final student = ref.watch(studentStateProvider).requireValue;
    final records = ref.watch(GetTodayStudentRecordsProvider(regNo: student.regNo));

    return GradientScaffold(
          appBar: const PopBackAppBar(showFilter: false),
          body: records.when(
      data: (studentRecordList) {

        if (studentRecordList.data.isEmpty) {
          return const Center(child: Text('Look like no Attendance was taken yet!'));
        }

        return ShadowContainer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  children: [
                    SemiTitleText(text: 'Id'),
                    SemiTitleText(text: 'Name'),
                    SemiTitleText(text: 'Status'),
                  ],
                ),
                const Divider(),
                ...studentRecordList.data.map((record) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: record.isPresent == 1 ? Colors.green : Colors.red,
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        SemiTitleText(text: '${record.subjectId}'),
                        SemiTitleText(text: record.subjectName),
                        SemiTitleText(text: record.isPresent == 1 ? 'Present' : 'Absent'),
                      ],
                    ),
                  );
                }),
              ],
            ),/*DataTable(
              showBottomBorder: true,
              columnSpacing: 5.0,
                columns: const [
                  DataColumn(
                    label: Text('Subject Id'),
                  ),
                  DataColumn(
                    label: Text('Subject Name'),
                  ),
                  DataColumn(
                    label: Text('Present/Absent'),
                  ),
                ],
                rows: studentRecordList.data.map((record) {
                  return DataRow(
                    cells: [
                      DataCell(Text(record.subjectId.toString())),
                      DataCell(Text(record.subjectName)),
                      DataCell(Text(record.isPresent == 1 ? 'Present' : 'Absent')),
                    ],
                  );
                }).toList()),*/
          ),
        );
      },
      error: (e, stk) => Center(child: Text('$e')),
      loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
