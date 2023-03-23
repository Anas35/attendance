import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget {
  const GradientScaffold({super.key, this.appBar, this.body, this.drawer});

  final PreferredSizeWidget? appBar;

  final Widget? body;

  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              primarySecondaryColor,
              primaryColor,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          drawer: drawer,
          appBar: appBar,
          body: body,
        ),
      ),
    );
  }
}