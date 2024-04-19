import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Colors.deepOrange,
  ),
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.deepOrange,
  primaryColorLight: Colors.deepOrange[200]!,
  useMaterial3: true,
  brightness: Brightness.light,
);

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(
    primary: Colors.deepOrange,
  ),
  scaffoldBackgroundColor: Colors.grey[900],
  primaryColor: Colors.deepOrange,
  primaryColorLight: Colors.deepOrange[200]!,
  useMaterial3: true,
  brightness: Brightness.dark,
);
