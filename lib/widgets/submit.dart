import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, required this.child, this.onPressed, this.style});

  final Widget child;

  final ButtonStyle? style;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: ElevatedButton(
          style: style,
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}
