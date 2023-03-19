import 'package:attendance/pages/common/logout.dart';
import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/student/student.dart';
import 'package:attendance/widgets/page_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StudentHomePage extends ConsumerWidget {
  const StudentHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final student = ref.watch(studentStateProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Attendance'),
        backgroundColor: Colors.greenAccent,
      ),
      body: student.when(
        data: (_) {
          return ListView(
            children: [
              PageCard(
                label: "Today's Attendance",
                iconData: Icons.event_note,
                onTap: () => Navigator.pushNamed(context, AppRoutes.viewTodayAttendance),
              ),
              PageCard(
                label: "OverAll Attendance",
                iconData: Icons.calendar_month,
                onTap: () => Navigator.pushNamed(context, AppRoutes.viewStudentAttendance),
              ),
              PageCard(
                label: "Edit Profile",
                iconData: Icons.person,
                onTap: () => Navigator.pushNamed(context, AppRoutes.updateStudentProfile),
              ),
              PageCard(
                label: "Log Out",
                iconData: Icons.logout,
                onTap: () => LogOut.show(context),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('$error')),
      ),
    );
  }
}
