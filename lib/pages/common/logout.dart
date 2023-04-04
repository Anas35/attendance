import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/data/data.dart';
import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  static Future<void> show(BuildContext context) async {
    return showDialog(context: context, builder: (_) => const LogOut());
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: lightTextColor,
      title: const Text('Log Out', style: darkTitleStyle),
      content: const Text('Are you sure you want to log out?', style: darkSubTitleStyle),
      actions: [
        Consumer(
          builder: (context, ref, _) {
            return TextButton(
              onPressed: () async {
                ref.read(dataStateProvider.notifier).clear();
                context.pushNamedAndRemoveUntil(AppRoutes.startUpPage);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: lightTextColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              ),
              child: const Text('Yes')
            );
          }
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: semiLightPrimaryColor,
            foregroundColor: lightTextColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
          child: const Text('No')
        ),
      ],
    );
  }
}