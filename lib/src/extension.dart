import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

extension FormatDate on DateTime {
  String get format => '$year-$month-$day';
}

extension When on AsyncValue {

  Widget onDate({required Widget Function(dynamic) data}) {
    return when(
      data: data, 
      loading: () => const Text('Loading'),
      error: (e, _) => Text('$e'),
    );
  }
}

extension Context on BuildContext {

  Future<T?> pushNamed<T extends Object?>(String routeName, {Object? arguments}) async {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<void> pushNamedAndRemoveUntil(String routeName, {Object? arguments}) async {
    return Navigator.pushNamedAndRemoveUntil<void>(this, routeName, (route) => false, arguments: arguments);
  }
  
  void popUntil(String route) {
    return Navigator.popUntil(this, ModalRoute.withName(route));
  }

  void showSnackBar(String content) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(content),
    ));
  }

}