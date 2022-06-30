import 'package:flutter/material.dart';
import 'colors/colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.purple.shade400,
      scaffoldBackgroundColor: Color.fromARGB(255, 31, 29, 43),
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
      )),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Color.fromARGB(255, 31, 29, 43),
          toolbarHeight: 65,
          elevation: 10,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w400,
          )),
      fontFamily: 'Montserrat',
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: const Color.fromARGB(200, 93, 84, 143),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        backgroundColor: Color.fromARGB(255, 47, 49, 66),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,

        selectedIconTheme: IconThemeData(
          size: 25
        ),
        unselectedIconTheme: IconThemeData(
          size: 22,
        ),

        selectedLabelStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 15,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
