import 'package:attendance/src/record/record.dart';
import 'package:attendance/src/student/student.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewStudentAttendance extends ConsumerWidget {
  const ViewStudentAttendance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final student = ref.watch(studentStateProvider);
    final records = ref.watch(GetStudentRecordsProvider(regNo: student.valueOrNull!.regNo));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Attendance'),
        backgroundColor: Colors.greenAccent,
      ),
      body: records.when(
        data: (studentRecordList) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              showBottomBorder: true,
              columnSpacing: 10.0,
                columns: [
                  const DataColumn(
                    label: Text('Subject Id'),
                  ),
                  const DataColumn(
                    label: Text('Subject Name'),
                  ),
                  DataColumn(
                    label: const Text('Present'),
                    numeric: true,
                    onSort: (columnIndex, ascending) {},
                  ),
                  DataColumn(
                    label: const Text('Absent'),
                    numeric: true,
                    onSort: (columnIndex, ascending) {},
                  ),
                  DataColumn(
                    label: const Text('Percentage'),
                    numeric: true,
                    onSort: (columnIndex, ascending) {},
                  ),
                ],
                rows: studentRecordList.data.map((record) {
                  return DataRow(
                    cells: [
                      DataCell(Text(record.subjectId!.toString())),
                      DataCell(Text(record.subjectName!)),
                      DataCell(Text(record.present)),
                      DataCell(Text(record.absent!)),
                      DataCell(Text(record.percentage!)),
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
