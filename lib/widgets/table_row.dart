import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';

class TableRecord extends StatelessWidget {
  const TableRecord({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(child: Text(title, style: darkTitleStyle)),
        ),
        Expanded(
          child: Center(child: Text(value, style: darkSubTitleStyle)),
        ),
      ],
    );
  }
}
