import 'package:countstock/core/constants/global_key.dart';
import 'package:countstock/core/localization/local_delegate.dart';
import 'package:countstock/navigator/AppRoute.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [LocalDelegate()],
      supportedLocales: const [
        Locale('en', 'EN'),
        Locale('km', 'KH'),
      ],
      initialRoute: '/',
      onGenerateRoute: AppRoute.appRoute,
      navigatorKey: navigator,
    );
  }
}
