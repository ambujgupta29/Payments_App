import 'package:flutter/material.dart';
import 'package:payments_app/router/app_router.dart';
import 'package:payments_app/screens/onboarding/onboarding_screen.dart';
import 'package:payments_app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: router,
      
    );
  }
}
