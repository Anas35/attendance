import 'package:attendance/pages/routes.dart';
import 'package:attendance/src/preference/preference.dart';
import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "oldValue": $previousValue,
  "newValue": "$newValue"
}''');
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final pref = await SharedPreferences.getInstance();
  
  runApp(
    ProviderScope(
      observers: [
        Logger(),
      ],
      overrides: [
        sharedPreferencesProvider.overrideWithValue(pref),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: primaryColor,
        fontFamily: 'OpenSans',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            textStyle: const TextStyle(fontSize: 19.0, fontWeight: FontWeight.w700),
            padding: EdgeInsets.zero,
          ),
        ),
      ),
      initialRoute: AppRoutes.startUpPage,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}