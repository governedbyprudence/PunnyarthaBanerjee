import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppThemes{
  static const mainYellow = Color(0xfff6db7a);
  static const mainViolet = Color(0xff8574e7);
  static const mainPink = Color(0xfff9daca);
  static ThemeData mainTheme(){
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "SanFransisco",
      primaryColor: Colors.black,
      primarySwatch: Colors.grey,
      appBarTheme:const AppBarTheme(backgroundColor: Colors.transparent,elevation: 0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp,color: Colors.black)
        )
      )
    );
  }
}

// #F6DB7A yellow
// #8574E7 violet
// #F9DACA pink
// font sans francisco