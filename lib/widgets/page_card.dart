import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';

class PageCard extends StatelessWidget {
  const PageCard({super.key, required this.label, this.onTap, required this.iconData});

  final String label;

  final IconData iconData;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
        height: 220,
        width: 220,
        decoration: BoxDecoration(
          color: lightTextColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 7.5,
              color: darkTextColor,
            ),
          ],
        ),
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconData, size: 75.0),
              const SizedBox(height: 15.0),
              Text(label,
                style: const TextStyle(
                  fontSize: 20,
                  color: darkTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.label, this.onTap});

  final String label;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
      height: 54.0,
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
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(label,
                style: const TextStyle(
                  fontSize: 20,
                  color: darkTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.keyboard_arrow_right_outlined, size: 28.0, weight: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
