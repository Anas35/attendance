import 'package:attendance/pages/routes.dart';
import 'package:attendance/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Image.asset('assets/images/logo.png', width: 175, height: 175),
              const Spacer(),
              const Text('Sign Up', style: headingStyle),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightPrimaryColor,
                    foregroundColor: darkTextColor,
                    fixedSize: const Size(double.maxFinite, 54.0),
                  ),
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.teacherRegister),
                  child: const Text('Sign Up As Teacher'),
                ),
              ),
              const SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: semiLightPrimaryColor,
                    foregroundColor: lightTextColor,
                    fixedSize: const Size(double.maxFinite, 54.0),
                  ),
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.studentRegister),
                  child: const Text('Sign Up As Student'),
                ),
              ),
              const Spacer(flex: 2),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'Already a user? ',
                      style: TextStyle(
                        fontSize: 19.0,
                        color: lightTextColor,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: const TextStyle(
                        fontSize: 19.0,
                        color: semiTextColor,
                        fontWeight: FontWeight.w400
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pushNamed(context, AppRoutes.login),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
