import 'package:attendance/src/record/record.dart';
import 'package:attendance/src/student/student.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewTodayAttendance extends ConsumerWidget {
  
  const ViewTodayAttendance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final student = ref.watch(studentStateProvider);
    final records = ref.watch(GetTodayStudentRecordsProvider(regNo: student.valueOrNull!.regNo));

    return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Today\'s Attendance'),
            backgroundColor: Colors.greenAccent,
          ),
          body: records.when(
      data: (studentRecordList) {

        if (studentRecordList.data.isEmpty) {
          return const Center(child: Text('Look like no Attendance was taken yet!'));
        }

        return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              showBottomBorder: true,
              columnSpacing: 10.0,
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
                      DataCell(Text(record.subjectName!)),
                      DataCell(Text(record.present == '1' ? 'Present' : 'Absent')),
                    ],
                  );
                }).toList()),
          );
      },
      error: (e, stk) => Center(child: Text('$e')),
      loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
