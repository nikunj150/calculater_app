import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
);
ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
);
