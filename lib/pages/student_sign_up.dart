import 'dart:io';

import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/authentication/authentication.dart';
import 'package:attendance/src/class/class.dart';
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

class StudentSignUp extends ConsumerStatefulWidget {
  const StudentSignUp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StudentRegisterPageState();
}

class _StudentRegisterPageState extends ConsumerState<StudentSignUp> with Validator {
  final form = GlobalKey<FormState>();
  final inputData = <String, String>{};
  String tempPassword = '';
  bool enable = false;
  File? file;

  @override
  Widget build(BuildContext context) {
    final studentRegister = ref.watch(authenticationProvider);

    ref.listen(authenticationProvider, (previous, next) {
      if (next.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${next.error}')));
        next.unwrapPrevious();
      }
      if (next.value == true) {
        context.pushNamedAndRemoveUntil(AppRoutes.studentHomePage);
      }
    });

    return GradientScaffold(
      body: Form(
        key: form,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(height: 30),
              Image.asset('assets/images/logo.png', width: 110, height: 110),
              const SizedBox(height: 30),
              const Center(
                child: Text('Welcome Student', style: headingStyle),
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
                onSaved: (value) => inputData['studentName'] = value!,
              ),
              FormInput(
                hintText: 'Enter Your Register No..*',
                validator: teacherIdValidator,
                onSaved: (value) => inputData['regNo'] = value!,
              ),
              SelectAsynInput<Department>(
                data: ref.watch(getDepartmentListProvider.future),
                itemAsString: (item) => item.departmentName,
                onChanged: (department) {
                  setState(() {
                    inputData['departmentId'] = '${department!.departmentId}';
                    enable = true;
                  });
                },
                validator: dropdownValidator<Department>,
              ),
              enable
                  ? SelectAsynInput<Class>(
                      data: ref.watch(
                        GetClassListProvider(
                          departmentId: int.tryParse(inputData['departmentId']!),
                        ).future,
                      ),
                      itemAsString: (item) => item.className,
                      onChanged: (cls) => inputData['classId'] = '${cls!.classId}',
                      validator: dropdownValidator<Class>,
                    )
                  : SelectAsynInput<Class>(
                      enabled: enable,
                      data: Future.value([]),
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
                  backgroundColor: semiLightPrimaryColor,
                  fixedSize: const Size(180, 54.0),
                  foregroundColor: lightTextColor,
                ),
                onPressed: () {  
                  if (file == null) {
                    context.showSnackBar('Please upload Profile Images');
                    return;
                  }
                  if (form.currentState!.validate()) {
                    form.currentState!.save();
                    ref.read(authenticationProvider.notifier).register(UserType.student, inputData, file!);
                  }
                },
                child: studentRegister.maybeWhen(
                  orElse: () => const Text('Create Account'),
                  loading: () => const CircularProgressIndicator(),
                ),
              ),
              const SizedBox(height: 48.0),
            ],
          ),
        ),
      ),
    );
  }
}
