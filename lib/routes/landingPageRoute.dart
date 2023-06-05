import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punnyartha/core/components/appbar.dart';
import 'package:punnyartha/core/components/drawer.dart';
import 'package:punnyartha/core/providers/deviceType.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../themes/Theme.dart';

class LandingPageRoute extends StatefulWidget {
  static const routeName ="/landing";
  const LandingPageRoute({Key? key}) : super(key: key);

  @override
  State<LandingPageRoute> createState() => _LandingPageRouteState();
}

class _LandingPageRouteState extends State<LandingPageRoute> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DeviceTypeProvider>(
      builder: (context,state,child) {
        return Scaffold(
          appBar: PreferredSize(preferredSize: Size.fromHeight(4.h),
          child: state.isMobile?const MobileAppBar():const WebAppBar()),
          body: SingleChildScrollView(
            physics:const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(state.isMobile)
                  _mobileBanner()
                else
                _webBanner()
              ],
            ),
          ),
        drawer: state.isMobile?const CustomDrawer():null,
        );
      }

    );
  }

  Widget _webBanner(){
    return Container(
      color: Colors.white,
      height: 100.h,
      width: 100.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DefaultTextStyle(
            style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w700,color: Colors.black),
            child: Container(
              padding: EdgeInsets.only(top: 45.sp,left: 40.sp),
              width: 55.w,
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome.",style: TextStyle(fontSize: 30.sp,color: AppThemes.mainViolet),),
                  SizedBox(height: 10.sp,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      const SizedBox(width: 40,)
                    ],
                  ),
                  SizedBox(height: 18.sp,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppThemes.mainViolet,
                      borderRadius: BorderRadius.circular(20.sp)
                    ),
                    height: 6.h,
                    width: 12.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        Text("See my work !",style: TextStyle(fontSize: 11.sp,color: Colors.white),),
                        const Icon(Icons.telegram_outlined,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 80.h,
            width: 35.w,
            decoration:BoxDecoration(
              color: AppThemes.mainYellow,
              borderRadius: BorderRadius.circular(50.sp)
            ),
          )
        ],
      ),
    );
  }
  Widget _mobileBanner(){
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          DefaultTextStyle(
            style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w700,color: Colors.black),
            child: Container(
              padding: EdgeInsets.only(top: 45.sp),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Welcome.",style: TextStyle(fontSize: 30.sp,color: AppThemes.mainViolet),),
                  SizedBox(height: 15.sp,),
                  const Text("I am a"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TyperAnimatedText("Developer"),
                          TyperAnimatedText("Tech Enthusiast"),
                          TyperAnimatedText("Traveller"),
                        ],
                      ),
                      const SizedBox(width: 40,)
                    ],
                  ),
                  SizedBox(height: 18.sp,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: AppThemes.mainViolet,
                        borderRadius: BorderRadius.circular(20.sp)
                    ),
                    height: 8.h,
                    width: 35.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        Text("See my work !",style: TextStyle(fontSize: 13.sp,color: Colors.white),),
                        const Icon(Icons.telegram_outlined,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30.sp,),
          Container(
            height: 30.h,
            width: 50.w,
            decoration:BoxDecoration(
                color: AppThemes.mainYellow,
                borderRadius: BorderRadius.circular(50.sp)
            ),
          )
        ],
      ),
    );
  }
}
