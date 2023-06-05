import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:punnyartha/routes/landingPageRoute.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreenRoute extends StatefulWidget {
  static const routeName = "/splash";
  const SplashScreenRoute({Key? key}) : super(key: key);

  @override
  State<SplashScreenRoute> createState() => _SplashScreenRouteState();
}

class _SplashScreenRouteState extends State<SplashScreenRoute> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  bool showButtons = false;
  List<AnimatedText> texts = [
    RotateAnimatedText('Hi !'),
    RotateAnimatedText('Is this your first time here ?'),

  ];
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 3000),
        vsync: this);
    _controller.forward();
    _controller.addListener(() {
          if(_controller.isCompleted){
            debugPrint("Completed");
            Navigator.pushReplacementNamed(context, LandingPageRoute.routeName);
          }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              RotationTransition(
                turns: Tween(begin: 0.0,end: 1.0).animate(_controller),
                child: Icon(Icons.account_box,size:65.sp,),
              ),
            ],
          )
        ),
    );
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
}
