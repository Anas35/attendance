import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/data/data.dart';
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
      title: const Text('Log Out'),
      content: const Text('Are you sure you want to log out?'),
      actions: [
        Consumer(
          builder: (context, ref, _) {
            return TextButton(
              onPressed: () {
                ref.read(dataStateProvider.notifier).clear();
                context.popUntil('/');
              },
              child: const Text('Yes')
            );
          }
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          child: const Text('No')
        ),
      ],
    );
  }
}