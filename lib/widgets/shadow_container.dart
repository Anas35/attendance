import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      decoration: const BoxDecoration(
        color: lightTextColor,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 5.0,
            color: darkTextColor,
          ),
        ],
      ),
      child: child,
    );
  }
}
