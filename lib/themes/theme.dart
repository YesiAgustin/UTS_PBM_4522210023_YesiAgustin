import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.pink.shade700, // Pink tua
  scaffoldBackgroundColor: Color(0xFFFFF5F7), // Latar belakang soft
  appBarTheme: AppBarTheme(
    color: Colors.pink.shade700,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.pink.shade700,
  ),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(
    secondary: Colors.pink.shade300,
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.pink.shade700,
  scaffoldBackgroundColor: Color(0xFF2B2B2B),
  appBarTheme: AppBarTheme(
    color: Colors.pink.shade700,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.pink.shade700,
  ),
  colorScheme: ColorScheme.dark(
    primary: Colors.pink.shade700,
    secondary: Colors.pink.shade300,
  ),
);
