import 'package:attendance/pages/common/logout.dart';
import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/teacher/teacher.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/page_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeacherHomePage extends ConsumerWidget {
  const TeacherHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teacher = ref.watch(teacherStateProvider);
    return Scaffold(
      body: teacher.when(
        data: (data) {
          return ListView(
            children: [
              const SizedBox(height: 30.0),
              const Center(
                child: Text('Welcome Back', 
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: lightTextColor
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Center(child: Text('${data.teacherName}!', style: headingStyle)),
              const SizedBox(height: 20.0),
              PageCard(
                label: "Take Attendance",
                iconData: Icons.edit_calendar,
                onTap: () => context.pushNamed(AppRoutes.classView, arguments: false),
              ),
              PageCard(
                label: "View Attendance",
                iconData: Icons.event_note,
                onTap: () => context.pushNamed(AppRoutes.classView, arguments: true),
              ),
              PageCard(
                label: "Edit Profile",
                iconData: Icons.person,
                onTap: () => context.pushNamed(AppRoutes.updateTeacherProfile),
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
