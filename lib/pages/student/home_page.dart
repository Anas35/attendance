import 'package:attendance/pages/common/logout.dart';
import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/student/student.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/error_page.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/loading.dart';
import 'package:attendance/widgets/page_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StudentHomePage extends ConsumerWidget {
  const StudentHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final student = ref.watch(studentStateProvider);
    return GradientScaffold(
      body: student.when(
        data: (data) {
          return ListView(
            children: [
              const SizedBox(height: 30.0),
              const Center(
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: lightTextColor,
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Center(child: Text('${data.studentName}!', style: headingStyle)),
              const SizedBox(height: 20.0),
              PageCard(
                label: "Today's Attendance",
                iconData: Icons.event_note,
                onTap: () => Navigator.pushNamed(context, AppRoutes.viewTodayAttendance),
              ),
              PageCard(
                label: "OverAll Attendance",
                iconData: Icons.calendar_month,
                onTap: () => Navigator.pushNamed(context, AppRoutes.viewStudentAttendance,
                    arguments: data.regNo),
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
        loading: () => const HomePageLoading(),
        error: (error, stackTrace) => ErrorPage(error: error, stackTrace: stackTrace),
      ),
    );
  }
}

class HomePageLoading extends StatelessWidget {
  const HomePageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              ShimmerLoading(
                child: Container(
                  width: 220.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: lightTextColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              ShimmerLoading(
                child: Container(
                  width: 220.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: lightTextColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ...List.filled(
                4,
                ShimmerLoading(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                      color: lightTextColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
