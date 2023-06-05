import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punnyartha/core/providers/deviceType.dart';
import 'package:punnyartha/routes/landingPageRoute.dart';
import 'package:punnyartha/routes/splash.dart';
import 'package:punnyartha/themes/Theme.dart';
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
        theme: AppThemes.mainTheme(),
        routes: {
          LandingPageRoute.routeName:(context)=>ChangeNotifierProvider(create: (_)=>DeviceTypeProvider(context: context),child: const LandingPageRoute()),
          SplashScreenRoute.routeName:(context)=>const SplashScreenRoute()
        },
        initialRoute: SplashScreenRoute.routeName,
      ),
    );
  }
}
