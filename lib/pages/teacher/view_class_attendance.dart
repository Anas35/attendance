import 'package:attendance/src/record/record.dart';
import 'package:attendance/src/repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewClassAttendance extends ConsumerWidget {
  const ViewClassAttendance({required this.classId, super.key});

  final int classId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final records = ref.watch(GetClassRecordsProvider(classId: classId));

    return records.when(
      data: (classRecordList) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Attendance'),
            backgroundColor: Colors.greenAccent,
          ),
          body: SingleChildScrollView(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                  dataRowHeight: 50.0,
                  columnSpacing: 15.0,
                  columns: [
                    const DataColumn(label: Text('Profile')),
                    const DataColumn(label: Text('Reg No')),
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
                  rows: classRecordList.data.map((record) {
                    return DataRow(
                      cells: [
                        DataCell(
                          CircleAvatar(child: Image.network('${Repository.url}/images/students/${record.regNo}')),
                        ),
                        DataCell(
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(record.regNo!, 
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text('Name Ab'),
                            ],
                          ),
                        ),
                        DataCell(Text(record.present)),
                        DataCell(Text(record.absent!)),
                        DataCell(Text(record.percentage!)),
                      ],
                    );
                  }).toList()),
            ),
          ),
        );
      },
      error: (e, stk) => Center(child: Text('$e')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
