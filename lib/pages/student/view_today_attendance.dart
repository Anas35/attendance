import 'package:attendance/src/record/today_attendance.dart';
import 'package:attendance/src/student/student.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/loading.dart';
import 'package:attendance/widgets/pop_back.dart';
import 'package:attendance/widgets/semi_title_text.dart';
import 'package:attendance/widgets/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewTodayAttendance extends ConsumerStatefulWidget {
  
  const ViewTodayAttendance({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ViewTodayAttendanceState();
}

class _ViewTodayAttendanceState extends ConsumerState<ViewTodayAttendance> {

  DateTime? date;

  @override
  Widget build(BuildContext context) {

    final student = ref.watch(studentStateProvider).requireValue;
    final records = ref.watch(GetTodayStudentRecordsProvider(regNo: student.regNo, date: date));

    return records.when(
      data: (studentRecordList) {
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
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: darkTextColor,
                        elevation: 0.0,
                        padding: const EdgeInsets.all(8.0),
                      ),
                      onPressed: () async {
                        final now = DateTime.now();
                        final selectedDate = await showDatePicker(
                          context: context,
                          initialDate: date ?? now,
                          firstDate: DateTime(now.year - 1),
                          lastDate: DateTime(now.year + 1),
                        );
                        if (selectedDate != null) {
                          setState(() {
                            date = selectedDate;
                          });
                        }
                      },
                      child: date == null
                          ? const Text('Select Date')
                          : Text('Date: ${date!.day}-${date!.month}-${date!.year}'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: studentRecordList.data.isEmpty ? 
          const ShadowContainer(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('No Attendance Records to show', style: darkTitleStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Check the following criteria. If neither of them satisfies, please, contact Adminstrator.\n\n\t\t1.Today or Selected Date is not holiday\n\t\t2.Today\'s Attendance has not been recorded yet', style: darkTitleStyle),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ) : 
          
           ShadowContainer(
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
              ),
            ),
          ),
        );
      },
      error: (e, stk) => Center(child: Text('$e')),
      loading: () => const Loading(),
    );
  }
}
