import 'package:attendance/src/record/record.dart';
import 'package:attendance/src/repository.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/loading.dart';
import 'package:attendance/widgets/pop_back.dart';
import 'package:attendance/widgets/semi_title_text.dart';
import 'package:attendance/widgets/shadow_container.dart';
import 'package:attendance/widgets/table_row.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewClassAttendance extends ConsumerStatefulWidget {
  const ViewClassAttendance({required this.classId, super.key});

  final int classId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ViewClassAttendanceState();
}

class _ViewClassAttendanceState extends ConsumerState<ViewClassAttendance> {

  final isExpand = <bool>[];

  
  @override
  Widget build(BuildContext context) {
    final records = ref.watch(GetClassRecordsProvider(classId: widget.classId));

    return records.when(
      data: (classRecordList) {

        if (isExpand.length != classRecordList.data.length) {
          isExpand.addAll(List.filled(classRecordList.data.length, false));
        }

        return GradientScaffold(
          appBar: const PopBackAppBar(),
          body: ListView.builder(
            itemCount: classRecordList.data.length,
            itemBuilder: (context, index) {
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
                        headerBuilder: (context, _) => Row(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                      '${Repository.url}/images/students/${classRecordList.data[index].regNo}'),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text(
                                  classRecordList.data[index].regNo!,
                                  style: const TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.w400,
                                    color: darkTextColor,
                                  ),
                                ),
                              ),
                            ),
                            SemiTitleText(text: '${classRecordList.data[index].percentage!}%'),
                          ],
                        ),
                        body: Column(
                          children: [
                            TableRecord(
                              title: 'Name: ',
                              value: classRecordList.data[index].studentName ?? "No Name",
                            ),
                            const Divider(endIndent: 20.0, indent: 20.0),
                            TableRecord(
                              title: 'No of Classes: ',
                              value: '${int.parse(classRecordList.data[index].present) + int.parse(classRecordList.data[index].absent!)}',
                            ),
                            const Divider(endIndent: 20.0, indent: 20.0),
                            TableRecord(
                              title: 'Present: ',
                              value: classRecordList.data[index].present,
                            ),
                            const Divider(endIndent: 20.0, indent: 20.0),
                            TableRecord(
                              title: 'Absent: ',
                              value: classRecordList.data[index].absent!,
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
        );
      },
      error: (e, stk) => Center(child: Text('$e')),
      loading: () => const Loading(),
    );
  }
}
