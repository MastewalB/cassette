import 'package:flutter/material.dart';
import 'colors/colors.dart';



class CustomTheme{
  static ThemeData get lightTheme{
    return ThemeData(
      primaryColor: Colors.purple.shade400,
      scaffoldBackgroundColor: Colors.purple.shade600,
      canvasColor: Colors.purple.shade200,
      indicatorColor: Colors.purple.shade50,
      primaryIconTheme: const IconThemeData(
        color: Colors.white,
        opacity: 1.0,
        size: 6.0,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.0,
        )
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize:28,
          fontWeight: FontWeight.w400,
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