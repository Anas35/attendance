import 'package:attendance/pages/routes.dart';
import 'package:attendance/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              const Text('Login', style: headingStyle),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightPrimaryColor,
                    foregroundColor: darkTextColor,
                    fixedSize: const Size(double.maxFinite, 54.0),
                  ),
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.teacherLogin),
                  child: const Text('Login As Teacher'),
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
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.studentLogin);
                  },
                  child: const Text('Login As Student'),
                ),
              ),
              const Spacer(flex: 2),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'Forgot password?\n',
                      style: TextStyle(
                        fontSize: 19.0,
                        color: lightPrimaryColor,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    TextSpan(
                      text: 'click here to reset',
                      style: const TextStyle(
                        fontSize: 19.0,
                        color: semiTextColor,
                        fontWeight: FontWeight.w400
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {},// context.pushNamed(AppRoutes.login, arguments: type),
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
