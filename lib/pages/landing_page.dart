import 'package:attendance/pages/routes.dart';
import 'package:attendance/pages/sign_up.dart';
import 'package:attendance/pages/student/home_page.dart';
import 'package:attendance/pages/teacher/home_page.dart';
import 'package:attendance/src/data/data.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StartUpPage extends ConsumerWidget {
  const StartUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(dataStateProvider);

    if (data == null) {
      return const SignUp();
    } else if (data.type == UserType.student) {
      return const StudentHomePage();
    } else {
      return const TeacherHomePage();
    }
  }
}

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GradientScaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              const SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.studentRegister);
                },
                child: const Text('Student'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.teacherRegister);
                },
                child: const Text('Teacher'),
              ),
            ],
          ),
        ),
    );
  }
}
