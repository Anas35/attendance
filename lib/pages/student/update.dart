import 'dart:io';

import 'package:attendance/src/departments/departments.dart';
import 'package:attendance/src/repository.dart';
import 'package:attendance/src/student/student.dart';
import 'package:attendance/src/validator.dart';
import 'package:attendance/widgets/select_classes.dart';
import 'package:attendance/widgets/select_departments.dart';
import 'package:attendance/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:file_picker/file_picker.dart';

class StudentUpdatePage extends ConsumerStatefulWidget {
  const StudentUpdatePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StudentUpdatePageState();
}

class _StudentUpdatePageState extends ConsumerState<StudentUpdatePage> with Validator {
  final inputData = <String, String>{};
  final form = GlobalKey<FormState>();
  File? file;

  @override
  Widget build(BuildContext context) {
    final student = ref.watch(studentStateProvider);

    return Scaffold(
      body: student.when(
        data: (data) {
          inputData['departmentId'] = '${data.departmentId}';
          inputData['classId'] = '${data.classId}';
          return Form(
            key: form,
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 30),
                  Center(
                    child: Text(
                      'Student Profile',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: InkWell(
                      child: file == null
                          ? CircleAvatar(
                              maxRadius: 54.0,
                              backgroundImage: NetworkImage(
                                '${Repository.url}/images/students/${data.regNo}.png',
                              ),
                              child: const Icon(Icons.add_a_photo),
                            )
                          : CircleAvatar(
                              maxRadius: 54.0,
                              backgroundImage: FileImage(file!),
                            ),
                      onTap: () async {
                        final result = await FilePicker.platform.pickFiles(type: FileType.image);
                        if (result != null) {
                          setState(() {
                            file = File(result.files.single.path!);
                          });
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  FormInput(
                    initialValue: data.studentName,
                    hintText: 'Name',
                    validator: nameValidator,
                    onSaved: (value) => inputData['studentName'] = value!,
                  ),
                  FormInput(
                    initialValue: data.email,
                    hintText: 'Email',
                    validator: emailValidator,
                    onSaved: (value) => inputData['email'] = value!,
                  ),
                  SelectDepartments(
                    departmentId: data.departmentId,
                    onChanged: (department) {
                      inputData['departmentId'] = '${department!.departmentId}';
                      ref.read(selectedDepartmentProvider.notifier).updateDept(department);
                    },
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Expanded(
                          child: SelectClasses(
                            departmentId: data.departmentId,
                            classId: data.classId,
                            onChanged: (value) => inputData['classId'] = '${value!.classId}',
                          ),
                        ),
                        Expanded(
                          child: FormInput(
                            initialValue: data.rollNo.toString(),
                            hintText: 'Roll No',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Roll No';
                              }
                              return null;
                            },
                            onSaved: (value) => inputData['rollNo'] = value!,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (form.currentState!.validate()) {
                          form.currentState!.save();
                          ref.read(studentStateProvider.notifier).updateStudentData(inputData, file);
                        }
                      },
                      child: const Text('Update'),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('$error')),
      ),
    );
  }
}
