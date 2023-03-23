import 'dart:convert';
import 'dart:io';

import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/class/class.dart';
import 'package:attendance/src/data/data.dart';
import 'package:attendance/src/departments/departments.dart';
import 'package:attendance/src/record/record.dart';
import 'package:attendance/src/record/student_attendance.dart';
import 'package:attendance/src/record/today_attendance.dart';
import 'package:attendance/src/student/student.dart';
import 'package:attendance/src/subject/subject.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
Repository repository(RepositoryRef ref) => Repository();

class Repository {

  static String get url => 'http://192.168.0.105:8000/api/v1';

  Future<List<Department>> getDepartments() async {
    final response = await http.get(
      Uri.parse('$url/departments'),
    ).timeout(const Duration(seconds: 20));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, Object?>;

      final allDepartment = DepartmentList.fromJson(json);
      return allDepartment.data;
    } else {
      throw response.statusCode;
    }
  }

  Future<List<Class>> getClasses({int? departmentId}) async {
    final dept = departmentId == null ? '' : '?departmentId=$departmentId';

    final response = await http.get(Uri.parse('$url/classes$dept'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, Object?>;

      final classes = ClassList.fromJson(json);
      return classes.data;
    } else {
      throw response.statusCode;
    }
  }

  Future<List<Subject>> getSubjects({int? departmentId}) async {
    final dept = departmentId == null ? '' : '?departmentId=$departmentId';

    final response = await http.get(Uri.parse('$url/subjects$dept'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, Object?>;

      final subjectList = SubjectList.fromJson(json);
      return subjectList.data;
    } else {
      throw response.statusCode;
    }
  }

  Future<List<Student>> getStudents({required int classId, required String token}) async {

    final response = await http.get(
      Uri.parse('$url/students'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, Object?>;

      final students = StudentList.fromJson(json);
      return students.data;
    } else {
      throw jsonDecode(response.body)['message'];
    }
  }

  Future<Map<String, Object?>> getProfile(Data data) async {

    final response = await http.get(
      Uri.parse('$url/${data.type.name}s/${data.id}'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${data.token}',
      },
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, Object?>;
    } else {
      throw jsonDecode(response.body)['message'];
    }
  }

  Future<Map<String, Object?>> updateProfile(Map<String, String> json, File? file, Data data) async {
    final request = http.MultipartRequest('Post', 
      Uri.parse('$url/${data.type.name}s/${data.id}?_method=PUT'),
    )..headers.addAll({
      'Accept': 'application/json',
      'Authorization': 'Bearer ${data.token}',
    })
    ..fields.addAll(json);

    if (file != null) {
      request.files.add(await http.MultipartFile.fromPath('profile', file.path)); 
    }

    final responseStream = await request.send();
    final response = await http.Response.fromStream(responseStream);

    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, Object?>;
    } else {
      throw jsonDecode(response.body)['message'];
    }

  }

  Future<Data> register(Map<String, String> data, File file, UserType userType) async {
    String localUrl = url;

    if (userType == UserType.student) {
      localUrl += '/students/register';
    } else {
      localUrl += '/teachers/register';
    }

    final request = http.MultipartRequest('Post', Uri.parse(localUrl))
    ..headers.addAll({'Accept': 'application/json'})
    ..fields.addAll(data)
    ..files.add(await http.MultipartFile.fromPath('profile', file.path));

    final responseStream = await request.send();
    final response = await http.Response.fromStream(responseStream);

    if (response.statusCode == 201) {
      final json = jsonDecode(response.body) as Map<String, Object?>;
      return Data.fromJson(json);
    } else {
      throw jsonDecode(response.body)['message'];
    }
  }

  Future<Data> login(Map<String, Object> data, UserType userType) async {
    String localUrl = url;

    if (userType == UserType.student) {
      localUrl += '/students/login';
    } else {
      localUrl += '/teachers/login';
    }

    final response = await http.post(
      Uri.parse(localUrl),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 201) {
      final json = jsonDecode(response.body) as Map<String, Object?>;
      return Data.fromJson(json);
    } else {
      throw jsonDecode(response.body)['message'];
    }
  }

  Future<void> takeAttedance({required AttendanceRecord attendance, required String token}) async {

    final response = await http.post(
      Uri.parse('$url/attendances'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(attendance.toJson()),
    );

    if (response.statusCode != 200) {
      throw response.statusCode;
    }
  }

  Future<AttendanceRecordResponseList> viewClassAttedance({required int classId}) async {

    final response = await http.get(
      Uri.parse('$url/classes/$classId/records'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return AttendanceRecordResponseList.fromJson(json);
    } else {
      throw response.statusCode;
    }
  }

  Future<StudentAttendance> viewStudentAttendance({required String regNo, DateTime? from, DateTime? until}) async {

    String localUrl = '$url/students/$regNo/records?';

    if (from != null) {
      localUrl += 'from=${from.format}&';
    }

    if (until != null) {
      localUrl += 'until=${until.format}';
    }

    final response = await http.get(
      Uri.parse(localUrl),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return StudentAttendance.fromJson(json['data']);
    } else {
      print(response.body);
      throw response.statusCode;
    }
  }

  Future<TodayAttendanceList> viewTodayStudentAttendance({required String regNo}) async {

    final response = await http.get(
      Uri.parse('$url/students/$regNo/recordsToday'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return TodayAttendanceList.fromJson(json);
    } else {
      throw jsonDecode(response.body)?['message'] ?? 'Error';
    }
  }
  
}
