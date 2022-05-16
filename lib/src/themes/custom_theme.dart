import 'package:flutter/material.dart';
import 'colors/colors.dart';



class CustomTheme{
  static ThemeData get lightTheme{
    return ThemeData(
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: Colors.purple.shade600,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.0,
        )
      ),
      fontFamily: 'Montserrat',
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: const Color.fromARGB(200, 93, 84, 143),
      )
    );
  }
}