import 'package:attendance/pages/dynamic_login.dart';
import 'package:attendance/pages/landing_page.dart';
import 'package:attendance/pages/login.dart';
import 'package:attendance/pages/student/home_page.dart';
import 'package:attendance/pages/student/student_profile.dart';
import 'package:attendance/pages/student/view_student_attendance.dart';
import 'package:attendance/pages/student/view_today_attendance.dart';
import 'package:attendance/pages/student_sign_up.dart';
import 'package:attendance/pages/teacher/class_view.dart';
import 'package:attendance/pages/teacher/home_page.dart';
import 'package:attendance/pages/teacher/subject_view.dart';
import 'package:attendance/pages/teacher/take_attendance.dart';
import 'package:attendance/pages/teacher/teacher_profile.dart';
import 'package:attendance/pages/teacher/view_class_attendance.dart';
import 'package:attendance/pages/teacher_sign_up.dart';
import 'package:attendance/src/data/data.dart';

import 'package:flutter/material.dart';

export 'package:attendance/src/extension.dart';

class AppRoutes {
  static const startUpPage = "/";
  static const landing = "/landing";
  static const teacherRegister = "/teacherRegister";
  static const studentRegister = "/studentRegister";
  static const login = "/login";
  static const studentLogin = "/studentLogin";
  static const teacherLogin = "/teacherLogin";

  static const classView = '/classView';
  static const subjectView = '/subjectView';

  static const teacherHomePage = '/teacherHomePage';
  static const takeAttendance = '/takeAttendance';
  static const viewClassAttendance = '/viewClassAttendance';
  static const updateTeacherProfile = '/updateTeacherProfile';

  static const studentHomePage = '/studentHomePage';
  static const viewStudentAttendance = '/viewStudentAttendance';
  static const viewTodayAttendance = '/viewTodayAttendance';
  static const updateStudentProfile = '/updateStudentProfile';

}

class AppRouter {
  
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.startUpPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const StartUpPage(),
          settings: settings,
        );
      case AppRoutes.landing:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const LandingPage(),
          settings: settings,
        );
      case AppRoutes.studentRegister:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const StudentSignUp(),
          settings: settings,
        );
      case AppRoutes.teacherRegister:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const TeacherSignUp(),
          settings: settings,
        );
      case AppRoutes.studentHomePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const StudentHomePage(),
          settings: settings,
        );
      case AppRoutes.teacherHomePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const TeacherHomePage(),
          settings: settings,
        );
      case AppRoutes.login:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const Login(),
          settings: settings,
        );
      case AppRoutes.studentLogin:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DynamicLogin(type: UserType.student),
          settings: settings,
        );
      case AppRoutes.teacherLogin:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DynamicLogin(type: UserType.teacher),
          settings: settings,
        );
      case AppRoutes.classView:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ClassView(
            isViewAttendance: settings.arguments as bool,
          ),
          settings: settings,
        );
      case AppRoutes.subjectView:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const SubjectView(),
          settings: settings,
        );
      case AppRoutes.takeAttendance:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const TakeAttendance(),
          settings: settings,
        );
      case AppRoutes.viewClassAttendance:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ViewClassAttendance(classId: settings.arguments as int),
          settings: settings,
        );
      case AppRoutes.updateTeacherProfile:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const TeacherUpdatePage(),
          settings: settings,
        );
      case AppRoutes.updateStudentProfile:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const StudentUpdatePage(),
          settings: settings,
        );
      case AppRoutes.viewStudentAttendance:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ViewStudentAttendance(regNo: settings.arguments as String),
          settings: settings,
        );
      case AppRoutes.viewTodayAttendance:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const ViewTodayAttendance(),
          settings: settings,
        );
      default:
        return null;
    }
  }
}
