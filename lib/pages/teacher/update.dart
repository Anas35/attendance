import 'dart:io';

import 'package:attendance/src/repository.dart';
import 'package:attendance/src/teacher/teacher.dart';
import 'package:attendance/src/validator.dart';
import 'package:attendance/widgets/select_departments.dart';
import 'package:attendance/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:file_picker/file_picker.dart';

class TeacherUpdatePage extends ConsumerStatefulWidget {
  const TeacherUpdatePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TeacherUpdatePageState();
}

class _TeacherUpdatePageState extends ConsumerState<TeacherUpdatePage> with Validator {
  final inputData = <String, String>{};
  final form = GlobalKey<FormState>();
  File? file;

  @override
  Widget build(BuildContext context) {
    final teacher = ref.watch(teacherStateProvider);

    return Scaffold(
      body: teacher.when(
        data: (data) {
          inputData['departmentId'] = '${data.departmentId}';
          return Form(
            key: form,
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 30),
                  Center(
                    child: Text(
                      'Teacher Profile',
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
                                '${Repository.url}/images/teachers/${data.teacherId}.png',
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
                    initialValue: data.teacherName,
                    hintText: 'Name',
                    validator: nameValidator,
                    onSaved: (value) => inputData['teacherName'] = value!,
                  ),
                  FormInput(
                    initialValue: data.email,
                    hintText: 'Email',
                    validator: emailValidator,
                    onSaved: (value) => inputData['email'] = value!,
                  ),
                  SelectDepartments(
                    departmentId: data.departmentId,
                    onChanged: (department) =>
                        inputData['departmentId'] = '${department!.departmentId}',
                  ),
                  const SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (form.currentState!.validate()) {
                          form.currentState!.save();
                          ref
                              .read(teacherStateProvider.notifier)
                              .updateTeacherData(inputData, file);
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
