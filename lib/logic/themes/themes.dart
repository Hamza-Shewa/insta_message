import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Colors.deepOrange,
  ),
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.deepOrange,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
  ),
  primaryColorLight: Colors.deepOrange[200]!,
  useMaterial3: true,
  brightness: Brightness.light,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(
      size: 32,
    ),
    unselectedIconTheme: IconThemeData(
      size: 24,
    ),
    selectedLabelStyle: TextStyle(
      fontSize: 14,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
    ),
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey,
  ),
);

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(
    primary: Colors.deepOrange,
  ),
  scaffoldBackgroundColor: Colors.grey[900],
  primaryColor: Colors.deepOrange,
  primaryColorLight: Colors.deepOrange[200]!,
  useMaterial3: true,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(
      size: 28,
    ),
    unselectedIconTheme: IconThemeData(
      size: 20,
    ),
    selectedLabelStyle: TextStyle(
      fontSize: 12,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 11,
    ),
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey,
  ),
  brightness: Brightness.dark,
);
