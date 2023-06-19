import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punnyartha/core/components/appbar.dart';
import 'package:punnyartha/core/components/drawer.dart';
import 'package:punnyartha/core/providers/deviceType.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../themes/Theme.dart';

class AboutPageRoute extends StatefulWidget {
  static const routeName = "/about";
  const AboutPageRoute({Key? key}) : super(key: key);

  @override
  State<AboutPageRoute> createState() => _AboutPageRouteState();
}

class _AboutPageRouteState extends State<AboutPageRoute> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DeviceTypeProvider>(
      builder:(context,state,child)=>Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(preferredSize: Size.fromHeight(4.h),
            child: state.isMobile?AppBar(backgroundColor: AppThemes.mainYellow,):WebAppBar(backgroundColor: AppThemes.mainYellow,)),
        drawer: state.isMobile?const CustomDrawer():null,
        body: Container(
          color: AppThemes.mainYellow,
          width: double.infinity,
            height: double.infinity,
            alignment: Alignment.topCenter,
            child: state.isMobile?_mobileBody():_webBody()),
      ),
    );
  }
  Widget _webBody(){
    return Container(
      height: 100.h,
      width: 100.w,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding:EdgeInsets.symmetric(vertical: 40,horizontal: 20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 7.h,),
                  Text("About Me.",style:TextStyle(fontWeight: FontWeight.w700,fontSize: 25.sp)),
                  DefaultTextStyle(
                    style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w600),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 50,),
                        Text("I am a passionate Python and Flutter developer, with a strong desire to contribute and make a meaningful impact in the world of technology."),
                        SizedBox(height: 60,),
                        Text("From a young age, I have been fascinated by the limitless possibilities that programming offers."),
                        SizedBox(height: 20,),
                        Text("This fascination led me to pursue a career in software development, where I continuously strive to expand my knowledge and expertise in Python and Flutter."),
                        SizedBox(height: 20,),
                      ],
                    ),
                  )
                ],
              )
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
            ),
          )
        ],
      ),
    );
  }
  Widget _mobileBody(){
    return
      SingleChildScrollView(
        child: Container(
          height: 120.h,
          width: 100.w,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
              padding:EdgeInsets.symmetric(vertical: 40,horizontal: 20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h,),
                  Text("About Me.",style:TextStyle(fontWeight: FontWeight.w700,fontSize: 25.sp)),
                  DefaultTextStyle(
                    style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.black),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 50,),
                        Text("I am a passionate Python and Flutter developer, with a strong desire to contribute and make a meaningful impact in the world of technology."),
                        SizedBox(height: 40,),
                        Text("From a young age, I have been fascinated by the limitless possibilities that programming offers."),
                        SizedBox(height: 40,),
                        Text("This fascination led me to pursue a career in software development, where I continuously strive to expand my knowledge and expertise in Python and Flutter."),
                        SizedBox(height: 20,),
                      ],
                    ),
                  )
                ],
              )
          ),
        ),
      );
  }
}
