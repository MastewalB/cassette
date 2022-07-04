import 'package:flutter/material.dart';
import 'package:cassette/src/themes/custom_theme.dart';
import 'package:cassette/src/navigation_page.dart';
import 'package:cassette/src/features/authentication/authentication.dart';
import 'package:cassette/src/features/onboarding/onboarding_page.dart';
import 'package:cassette/src/features/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomTheme.lightTheme,
        home: NavigationPage(),//HomePage(),//PlayerPage(),
        );
  }
}
