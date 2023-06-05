import 'package:flutter/material.dart';
import 'package:punnyartha/routes/landingPageRoute.dart';
import 'package:punnyartha/routes/splash.dart';
import 'package:punnyartha/themes/darkTheme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder:(context,orientation,screenType)=> MaterialApp(
        theme: AppThemes.darkTheme(),
        routes: {
          LandingPageRoute.routeName:(context)=>const LandingPageRoute(),
          SplashScreenRoute.routeName:(context)=>const SplashScreenRoute()
        },
        initialRoute: SplashScreenRoute.routeName,
      ),
    );
  }
}
