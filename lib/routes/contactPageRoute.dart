import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punnyartha/core/components/appbar.dart';
import 'package:punnyartha/core/components/drawer.dart';
import 'package:punnyartha/core/providers/deviceType.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/utils/static.dart';

class ContactPageRoute extends StatefulWidget {
  static const routeName= "/contact";
  const ContactPageRoute({Key? key}) : super(key: key);

  @override
  State<ContactPageRoute> createState() => _ContactPageRouteState();
}

class _ContactPageRouteState extends State<ContactPageRoute> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Consumer<DeviceTypeProvider>(
      builder: (context,state,child) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: state.isMobile?AppBar():WebAppBar(backgroundColor: Colors.transparent,),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image:AssetImage("assets/images/contact.gif"),
                    fit: BoxFit.cover
                )
            ),
            child: state.isMobile?_mobileBody():_webBody(),
          ),
          drawer: state.isMobile? const CustomDrawer():null,
        );
      }
    );
  }
  Widget _webBody(){
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Container(
        alignment: Alignment.topCenter,
        constraints: BoxConstraints(
          minHeight: 100.h
        ),
        width: 100.w,
        child: Row(
          children: [
            Expanded(child:
            Container(
              padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 100),
            child: Column(
              children: [
                SizedBox(height: 1.h,),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Contact Me !",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24.sp),),
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                  const Icon(SimpleIcons.linkedin,size: 40,),
                    TextButton(onPressed: ()async{
                    Uri url = Uri.parse(Social.linkedInUrl);
                    await launchUrl(url);
                  }, child:const Text("Punnyartha Banerjee"))
                ],
                ),
                SizedBox(height: 5.h,),
                Row(
                  children: [
                  const Icon(SimpleIcons.github,size: 40,),
                  TextButton(onPressed: ()async{
                      Uri url = Uri.parse(Social.githubUrl);
                      await launchUrl(url);
                    }, child:const Text("governedbyprudence"),
                  )
                ],
                ),
                SizedBox(height: 5.h,),
                Row(
                  children: [
                  const Icon(SimpleIcons.twitter,size: 40,),
                   TextButton(onPressed: ()async{
                    Uri url = Uri.parse(Social.twitterUrl);
                    await launchUrl(url);
                  }, child:const Text("@punnyartha"))
                ],
                ),
                SizedBox(height: 5.h,),
                Row(
                  children: [
                  const Icon(SimpleIcons.gmail,size: 40,),
                   TextButton(onPressed: ()async{
                  }, child:const Text("punnyarthabanerjee@gmail.com"))
                ],
                ),
                SizedBox(height: 30.h,),
              ],
            ),
            )),
            Expanded(child: Container(color: Colors.grey,)),
          ],
        ),
      ),
    );
  }
  Widget _mobileBody(){
  return Container(color:Colors.black45,);
  }
}
