import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/authentication/authentication.dart';
import 'package:attendance/src/data/data.dart';
import 'package:attendance/src/validator.dart';
import 'package:attendance/styles.dart';
import 'package:attendance/widgets/gradient_scaffold.dart';
import 'package:attendance/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DynamicLogin extends ConsumerStatefulWidget {
  const DynamicLogin({required this.type, super.key});

  final UserType type;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DynamicLoginState();
}

class _DynamicLoginState extends ConsumerState<DynamicLogin> with Validator {
  final form = GlobalKey<FormState>();
  final inputData = <String, String>{};

  @override
  Widget build(BuildContext context) {

    final auth = ref.watch(authenticationProvider);

    ref.listen(authenticationProvider, (previous, next) {
      if (next.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${next.error}')));
      }
      if (next.hasValue && next.value == true) {
        context.pushNamedAndRemoveUntil('/${widget.type.name}HomePage');
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
              Center(
                child: Text('Welcome ${widget.type.formattedName}', style: headingStyle),
              ),
              const SizedBox(height: 30),
              FormInput(
                hintText: 'Enter Your Email Address..*',
                validator: emailValidator,
                onSaved: (value) => inputData['email'] = value!,
              ),
              FormInput(
                hintText: 'Enter Your Password..*',
                validator: passwordValidtor,
                onSaved: (value) => inputData['password'] = value!,
              ),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: semiLightPrimaryColor,
                    foregroundColor: lightTextColor,
                    fixedSize: const Size(double.maxFinite, 54.0),
                  ),
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      form.currentState!.save();
                      ref.read(authenticationProvider.notifier).login(inputData, widget.type);
                    }
                  },
                  child: auth.maybeWhen(
                    orElse: () => const Text('Login'),
                    loading: () => const CircularProgressIndicator(),
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
