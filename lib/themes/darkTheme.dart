import 'package:flutter/material.dart';

class AppThemes{
  static ThemeData darkTheme(){
    return ThemeData(
      primaryColor: Colors.black,
      primarySwatch: Colors.grey,
      appBarTheme:const AppBarTheme(backgroundColor: Colors.black),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
          foregroundColor: const MaterialStatePropertyAll<Color?>(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.grey)))
    );
  }
}