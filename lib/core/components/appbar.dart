import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punnyartha/core/providers/optionProvider.dart';
import 'package:punnyartha/routes/aboutPageRoute.dart';
import 'package:punnyartha/routes/landingPageRoute.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../routes/contactPageRoute.dart';
import '../../routes/skillsPageRoute.dart';

class WebAppBar extends StatelessWidget with PreferredSizeWidget{
  Color backgroundColor;
  WebAppBar({Key? key,this.backgroundColor=Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuOptionProvider>(
      builder: (context,state,child) {
        return PreferredSize(
          preferredSize: Size.fromHeight(4.h),
          child: AppBar(
            backgroundColor: backgroundColor,
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  state.change(MenuOption.home);
                  Navigator.pushReplacementNamed(context, LandingPageRoute.routeName);
                }, child:Text("Home",style: TextStyle(color: state.currentOption==MenuOption.home?Colors.black:Colors.black54),)),
                _space(),
                TextButton(onPressed: (){
                  state.change(MenuOption.about);
                  Navigator.pushReplacementNamed(context, AboutPageRoute.routeName);
                }, child:Text("About",style: TextStyle(color: state.currentOption==MenuOption.about?Colors.black:Colors.black54),)),
                _space(),
                TextButton(onPressed: (){
                  state.change(MenuOption.skills);
                  Navigator.pushReplacementNamed(context, SkillsPageRoute.routeName);
                }, child:Text("Skills",style: TextStyle(color: state.currentOption==MenuOption.skills?Colors.black:Colors.black54),)),
                _space(),
                TextButton(onPressed: (){
                  state.change(MenuOption.home);
                }, child:Text("Projects",style: TextStyle(color: state.currentOption==MenuOption.projects?Colors.black:Colors.black54),)),
                _space(),
                TextButton(onPressed: (){
                  state.change(MenuOption.contact);
                  Navigator.pushReplacementNamed(context, ContactPageRoute.routeName);
                }, child:Text("Contact",style: TextStyle(color: state.currentOption==MenuOption.contact?Colors.black:Colors.black54),)),
                _space(),
              ],
            ),
          ),
        );
      }
    );
  }
  Widget _space(){
    return const SizedBox(width: 20,);
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MobileAppBar extends StatelessWidget with PreferredSizeWidget{
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
