import 'package:attendance/src/record/student_attendance.dart';
import 'package:attendance/src/repository.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/loading.dart';
import 'package:attendance/widgets/pop_back.dart';
import 'package:attendance/widgets/semi_title_text.dart';
import 'package:attendance/widgets/shadow_container.dart';
import 'package:attendance/widgets/table_row.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewStudentAttendance extends ConsumerStatefulWidget {
  const ViewStudentAttendance({required this.regNo, super.key});

  final String regNo;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ViewStudentAttendanceState();
}

class _ViewStudentAttendanceState extends ConsumerState<ViewStudentAttendance> {
  final isExpand = List.filled(10, false);
  DateTime? fromDate, untilDate;
  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final records = ref.watch(
      GetStudentRecordsProvider(regNo: widget.regNo, fromDate: fromDate, until: untilDate),
    );
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
                        final selectedDate = await showDatePicker(
                          context: context,
                          initialDate: fromDate ?? now,
                          firstDate: DateTime(now.year - 1),
                          lastDate: DateTime(now.year + 1),
                        );
                        if (selectedDate != null) {
                          setState(() {
                            fromDate = selectedDate;
                          });
                        }
                      },
                      child: fromDate == null
                          ? const Text('Select Date From')
                          : Text('Date From: ${fromDate!.day}-${fromDate!.month}-${fromDate!.year}'),
                    ),
                  ),
                ),
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
                        final selectedDate = await showDatePicker(
                          context: context,
                          initialDate: untilDate ?? now,
                          firstDate: DateTime(now.year - 1),
                          lastDate: DateTime(now.year + 1),
                        );
                        if (selectedDate != null) {
                          setState(() {
                            untilDate = selectedDate;
                          });
                        }
                      },
                      child: untilDate == null
                          ? const Text('Select Date Until')
                          : Text('Date Until: ${untilDate!.day}-${untilDate!.month}-${untilDate!.year}'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ShadowContainer(
                  child: Column(
                    children: [
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: '${Repository.url}/images/students/${studentRecordList.regNo}',
                                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                  errorWidget: (context, url, error) => const Icon(Icons.person, size: 28.0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Text(
                                studentRecordList.regNo,
                                style: const TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w400,
                                  color: darkTextColor,
                                ),
                              ),
                            ),
                          ),
                          SemiTitleText(
                            text: '${studentRecordList.percentage}%',
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      TableRecord(
                        title: 'Name: ',
                        value: studentRecordList.studentName,
                      ),
                      const Divider(endIndent: 20.0, indent: 20.0),
                      TableRecord(
                        title: 'No of Classes: ',
                        value: '${int.parse(studentRecordList.present) + int.parse(studentRecordList.absent)}',
                      ),
                      const Divider(endIndent: 20.0, indent: 20.0),
                      TableRecord(
                        title: 'Present: ',
                        value: studentRecordList.present,
                      ),
                      const Divider(endIndent: 20.0, indent: 20.0),
                      TableRecord(
                        title: 'Absent: ',
                        value: studentRecordList.absent,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              if (studentRecordList.records.isEmpty) ...{
                const SliverToBoxAdapter(
                  child: ShadowContainer(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('No Attendance Records Found', style: darkTitleStyle),
                        ],
                      ),
                    ),
                  ),
                ),
              },
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 12.0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: studentRecordList.records.length,
                    (context, index) {
                      final subjectRecord = studentRecordList.records[index];
                      return ShadowContainer(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                          child: ExpansionPanelList(
                            elevation: 0.0,
                            expansionCallback: (panelIndex, isExpanded) {
                              setState(() {
                                isExpand[index] = !isExpanded;
                              });
                            },
                            children: [
                              ExpansionPanel(
                                headerBuilder: (context, isExpanded) => Row(
                                  children: [
                                    SemiTitleText(
                                      flex: 2,
                                      text: 'Subject Id: ${subjectRecord.subjectId}',
                                    ),
                                    SemiTitleText(
                                      text: '${subjectRecord.percentage}%',
                                    ),
                                  ],
                                ),
                                body: Column(
                                  children: [
                                    TableRecord(
                                      title: 'Subject: ',
                                      value: subjectRecord.subjectName,
                                    ),
                                    const Divider(endIndent: 20.0, indent: 20.0),
                                    TableRecord(
                                      title: 'No of Classes: ',
                                      value: '${int.parse(subjectRecord.present) + int.parse(subjectRecord.absent)}',
                                    ),
                                    const Divider(endIndent: 20.0, indent: 20.0),
                                    TableRecord(
                                      title: 'Present: ',
                                      value: subjectRecord.present,
                                    ),
                                    const Divider(endIndent: 20.0, indent: 20.0),
                                    TableRecord(
                                      title: 'Absent: ',
                                      value: subjectRecord.absent,
                                    ),
                                    const SizedBox(height: 15),
                                  ],
                                ),
                                isExpanded: isExpand[index],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
      error: (e, stk) => Center(child: Text('$e')),
      loading: () => const ViewStudentLoading(),
    );
  }
}

class ViewStudentLoading extends StatelessWidget {
  const ViewStudentLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: GradientScaffold(
        appBar: const PopBackAppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: ShimmerLoading(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    color: lightTextColor,
                  ),
                ),
              ),
            ),
            ...List.filled(
              5, 
              Expanded(
                child: ShimmerLoading(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      color: lightTextColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}