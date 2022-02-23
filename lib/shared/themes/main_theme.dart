import 'package:flutter/material.dart';

class MainTheme {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light()
      .copyWith(
        // Primary Color
        primaryColor: primaryColor,
        // AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primaryColor,
          elevation: 5,
        ),
        // TextButton Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: primaryColor
          )
        ),
        // Floating Action Buttons
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
          elevation: 5
        ),
        // Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            primary: primaryColor,
            elevation: 0
          ),
        // Dialog (TODO)

        )
      );

  static final ThemeData darkTheme = ThemeData.dark()
      .copyWith(
        // Primary Color
        primaryColor: primaryColor,
        // AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primaryColor,
          elevation: 5,
        ),
        // Scaffold
        scaffoldBackgroundColor: Colors.black
      );
  
}
