import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.white,
    inversePrimary: Colors.grey.shade700,
  ),
);
