import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';

class SemiTitleText extends StatelessWidget {
  const SemiTitleText({super.key, required this.text, this.flex = 1});

  final String text;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w700,
            color: darkTextColor,
          ),
        ),
      ),
    );
  }
}
