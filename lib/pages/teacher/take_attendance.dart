import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/record/record.dart';
import 'package:attendance/src/repository.dart';
import 'package:attendance/src/student/student.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/loading.dart';
import 'package:attendance/widgets/pop_back.dart';
import 'package:attendance/widgets/submit.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TakeAttendance extends ConsumerStatefulWidget {
  const TakeAttendance({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TakeAttendanceState();
}

class _TakeAttendanceState extends ConsumerState<TakeAttendance> {
  final borderSide = const BorderSide(color: Colors.black, width: 2);
  final present = List.generate(50, (index) => true);

  @override
  Widget build(BuildContext context) {
    final regNo = ref.watch(getStudentListProvider);
    final attendance = ref.watch(recordStateProvider);

    ref.listen(recordStateProvider, (previous, next) {
      if (next.value == true) {
        context.popUntil(AppRoutes.teacherHomePage);
      }
    });

    return regNo.when(
      data: (students) {
        return GradientScaffold(
          appBar: const PopBackAppBar(),
          body: ListView.builder(
            itemCount: students.length + 1,
            itemBuilder: (context, index) {
              if (index == students.length) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: lightPrimaryColor,
                      foregroundColor: darkTextColor,
                      fixedSize: const Size(double.maxFinite, 54.0),
                    ),
                    onPressed: () {
                      final List<Record> records = [];
                      for (int i = 0; i < students.length; i++) {
                        records.add(Record(regNo: students[i].regNo, present: present[i]));
                      }
                
                      ref.read(recordStateProvider.notifier).submit(records);
                    },
                    child: attendance.maybeMap(
                      orElse: () => const Text('Submit'),
                      loading: (_) => const CircularProgressIndicator(),
                    ),
                  ),
                );
              }
          
              return Container(
                margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                height: 75.0,
                decoration: const BoxDecoration(
                  color: lightTextColor,
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 5.0,
                      color: darkTextColor,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network('${Repository.url}/images/students/${students[index].regNo}'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(students[index].regNo, style: const TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.w400,
                              color: darkTextColor,
                            ),
                          ),
                          Text(students[index].studentName, style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: darkTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SegmentedButton<bool>(
                        style: ButtonStyle(
                          padding: const MaterialStatePropertyAll(EdgeInsets.all(30.0)),
                          side: MaterialStateProperty.all(
                            BorderSide.none,
                          ),
                          backgroundColor: MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.selected)) {
                              if (present[index]) {
                                return Colors.green;
                              } else {
                                return Colors.red;
                              }
                            }
                            return Colors.grey.shade300;
                          }),
                          shape: const MaterialStatePropertyAll<OutlinedBorder>(
                            BeveledRectangleBorder(),
                          ),
                        ),
                        segments: const [
                          ButtonSegment(
                            value: true,
                            icon: Icon(Icons.done, color: darkTextColor, weight: 0.5),
                          ),
                          ButtonSegment(
                            value: false,
                            icon: Icon(Icons.close, color: darkTextColor, weight: 0.5),
                          ),
                        ],
                        showSelectedIcon: false,
                        selected: {present[index]},
                        onSelectionChanged: (Set<bool> newSelection) {
                          setState(() {
                            present[index] = newSelection.first;
                          });
                        },
                      ),
                    ),
                  ],
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
