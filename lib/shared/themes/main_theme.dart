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
