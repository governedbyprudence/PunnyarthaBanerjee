import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punnyartha/core/providers/deviceType.dart';
import 'package:punnyartha/core/providers/optionProvider.dart';
import 'package:punnyartha/routes/aboutPageRoute.dart';
import 'package:punnyartha/routes/contactPageRoute.dart';
import 'package:punnyartha/routes/landingPageRoute.dart';
import 'package:punnyartha/routes/skillsPageRoute.dart';
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
      builder:(context,orientation,screenType)=> MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>MenuOptionProvider()),
        ],
        child: MaterialApp(
          theme: AppThemes.mainTheme(),
          routes: {
            LandingPageRoute.routeName:(context)=>ChangeNotifierProvider(create: (_)=>DeviceTypeProvider(context: context),child: const LandingPageRoute()),
            SplashScreenRoute.routeName:(context)=>ChangeNotifierProvider(create: (_)=>DeviceTypeProvider(context: context),child:const SplashScreenRoute()),
            AboutPageRoute.routeName:(context)=>ChangeNotifierProvider(create: (_)=>DeviceTypeProvider(context: context),child:const AboutPageRoute()),
            ContactPageRoute.routeName:(context)=>ChangeNotifierProvider(create: (_)=>DeviceTypeProvider(context: context),child:const ContactPageRoute()),
            SkillsPageRoute.routeName:(context)=>ChangeNotifierProvider(create: (_)=>DeviceTypeProvider(context: context),child:const SkillsPageRoute()),
          },
          initialRoute: SplashScreenRoute.routeName,
        ),
      ),
    );
  }
}
