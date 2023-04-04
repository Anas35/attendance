import 'dart:io';

import 'package:attendance/src/departments/departments.dart';
import 'package:attendance/src/repository.dart';
import 'package:attendance/src/teacher/teacher.dart';
import 'package:attendance/src/validator.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/error_page.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/loading.dart';
import 'package:attendance/widgets/pop_back.dart';
import 'package:attendance/widgets/submit.dart';
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

    return teacher.when(
      data: (data) {
        return GradientScaffold(
          appBar: const PopBackAppBar(showFilter: false),
          body: Form(
            key: form,
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 30),
                  const Center(
                    child: Text('Update Profile', style: headingStyle),
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
                  const SizedBox(height: 30),
                  FormInput(
                    readOnly: true,
                    initialValue: '${data.teacherId}',
                    hintText: 'Enter Your Teacher Id..*',
                  ),
                  FormInput(
                    initialValue: data.teacherName,
                    hintText: 'Enter Your Name..*',
                    validator: nameValidator,
                    onSaved: (value) => inputData['teacherName'] = value!,
                  ),
                  SelectAsynInput<Department>(
                    data: ref.watch(getDepartmentListProvider.future),
                    itemAsString: (item) => item.departmentName,
                    selectedItem: data.department,
                    onChanged: (department) =>
                        inputData['departmentId'] = '${department!.departmentId}',
                    validator: dropdownValidator<Department>,
                  ),
                  FormInput(
                    initialValue: data.email,
                    hintText: 'Enter your Email Address..*',
                    validator: emailValidator,
                    onSaved: (value) => inputData['email'] = value!,
                  ),
                  const SizedBox(height: 60.0),
                  SubmitButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: lightPrimaryColor,
                      fixedSize: const Size(180, 54.0),
                      foregroundColor: darkTextColor,
                    ),
                    onPressed: () {
                      inputData['departmentId'] ??= '${data.department.departmentId}';
                      if (form.currentState!.validate()) {
                        form.currentState!.save();
                        ref.read(teacherStateProvider.notifier).updateTeacherData(inputData, file);
                      }
                    },
                    child: const Text('Update'),
                  ),
                  const SizedBox(height: 48.0),
                ],
              ),
            ),
          ),
        );
      },
      loading: () => const Loading(),
      error: (error, stackTrace) => ErrorPage(error: error, stackTrace: stackTrace),
    );
  }
}
