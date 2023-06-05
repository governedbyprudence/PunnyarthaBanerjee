import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:punnyartha/core/components/appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LandingPageRoute extends StatefulWidget {
  static const routeName ="/landing";
  const LandingPageRoute({Key? key}) : super(key: key);

  @override
  State<LandingPageRoute> createState() => _LandingPageRouteState();
}

class _LandingPageRouteState extends State<LandingPageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WebAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            selfBanner()
          ],
        ),
      ),
    );
  }

  Widget selfBanner(){
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(10),
      height: 80.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin:const EdgeInsets.all(20),
            color: Colors.grey,
            width: 40.w,
            alignment: Alignment.center,
            child: Icon(Icons.account_box,size: 56.sp,),
          ),//Left container, will contain picture
          DefaultTextStyle(
            style: TextStyle(fontSize: 20.sp),
            child: Container(
              width: 50.w,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("I am a"),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText("Developer"),
                      TyperAnimatedText("Tech Enthusiast"),
                      TyperAnimatedText("Traveller"),
                    ],
                  ),
                ],
              ),
            ),
          ), // Right container will contain information about me
        ],
      ),
    );
  }
}
