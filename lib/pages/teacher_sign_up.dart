import 'dart:io';

import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/authentication/authentication.dart';
import 'package:attendance/src/data/data.dart';
import 'package:attendance/src/departments/departments.dart';
import 'package:attendance/src/validator.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/submit.dart';
import 'package:attendance/widgets/upload_image.dart';
import 'package:attendance/widgets/widgets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TeacherSignUp extends ConsumerStatefulWidget {
  const TeacherSignUp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpTeacherState();
}

class _SignUpTeacherState extends ConsumerState<TeacherSignUp> with Validator {

  final inputData = <String, String>{};
  String tempPassword = '';
  File? file;
  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final teacherRegister = ref.watch(authenticationProvider);

    ref.listen(authenticationProvider, (previous, next) { 
      if (next.hasError) {
        context.showSnackBar('${next.error}');
        next.unwrapPrevious();
      }
      if (next.value == true) {
        context.pushNamedAndRemoveUntil(AppRoutes.teacherHomePage);
      }
    });

    return GradientScaffold(
      body: SafeArea(
        child: Form(
          key: form,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                const SizedBox(height: 30),
                Image.asset('assets/images/logo.png', width: 110, height: 110),
                const SizedBox(height: 30),
                const Center(
                  child: Text('Welcome Teacher', style: headingStyle),
                ),
                const SizedBox(height: 30),
                UploadImage(
                file: file,
                onPressed: () async {
                  final result = await FilePicker.platform.pickFiles(type: FileType.image);
                  if (result != null) {
                    setState(() {
                      file = File(result.files.single.path!);
                    });
                  }
                },
              ),
              const SizedBox(height: 10),
                FormInput(
                  hintText: 'Enter Your Name..*',
                  validator: nameValidator,
                  onSaved: (value) => inputData['teacherName'] = value!,
                ),
                FormInput(
                  hintText: 'Enter Your Employee ID..*',
                  validator: teacherIdValidator,
                  onSaved: (value) => inputData['teacherId'] = value!,
                ),
                SelectAsynInput<Department>(
                  data: ref.watch(getDepartmentListProvider.future),
                  itemAsString: (item) => item.departmentName,
                  onChanged: (department) => inputData['departmentId'] = '${department!.departmentId}',
                  validator: dropdownValidator<Department>,
                ),
                FormInput(
                  hintText: 'Enter Your Email Address..*',
                  validator: emailValidator,
                  onSaved: (value) => inputData['email'] = value!,
                ),
                FormInput(
                  hintText: 'Enter Your Password..*',
                  validator: passwordValidtor,
                  onChanged: (value) => tempPassword = value!,
                  onSaved: (value) => inputData['password'] = value!,
                ),
                FormInput(
                  hintText: 'Re Enter Your Password..*',
                  validator: (value) {
                    if (tempPassword != value) {
                      return 'Password does not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 60.0),
                SubmitButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightPrimaryColor,
                    fixedSize: const Size(180, 54.0),
                    foregroundColor: darkTextColor,
                  ),
                  onPressed: () {
                    if (file == null) {
                      context.showSnackBar('Please upload Profile Images');
                      return;
                    }

                    if (form.currentState!.validate()) {
                      form.currentState!.save();
                      ref.read(authenticationProvider.notifier).register(UserType.teacher, inputData, file!);
                    }
                  },
                  child: teacherRegister.maybeWhen(
                    orElse: () => const Text('Create Account'),
                    loading: () => const CircularProgressIndicator(),
                  ),
                ),
                const SizedBox(height: 48.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
