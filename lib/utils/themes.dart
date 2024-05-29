import 'package:flutter/material.dart';

final doctorLightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Colors.teal,
    onPrimary: Colors.white,
    secondary: Colors.teal,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
    primaryContainer: Colors.grey.shade300,
    onPrimaryContainer: Colors.black,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
  ),
);

final doctorDarkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.teal,
    onPrimary: Colors.white,
    secondary: Colors.teal,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.grey.shade900,
    onSurface: Colors.white,
    primaryContainer: Colors.grey.shade700,
    onPrimaryContainer: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
  ),
);

final patientLightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.pink,
);

final patientDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.pink,
);
