import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punnyartha/core/providers/optionProvider.dart';
import 'package:punnyartha/routes/aboutPageRoute.dart';
import 'package:punnyartha/routes/landingPageRoute.dart';
import 'package:punnyartha/themes/Theme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomDrawer extends StatelessWidget {
  //Color color;
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuOptionProvider>(
      builder:(context,state,child)=>Drawer(
        backgroundColor: Colors.black12,
        child: ListView(
          children: [
            SizedBox(height: 30.sp,),
            ListTile(onTap: (){
              state.change(MenuOption.home);
              Navigator.pushReplacementNamed(context, LandingPageRoute.routeName);
            },title: Text("Home",style: TextStyle(color: state.currentOption==MenuOption.home?AppThemes.mainYellow:Colors.white),),),
            ListTile(onTap: (){
              state.change(MenuOption.about);
              Navigator.pushReplacementNamed(context, AboutPageRoute.routeName);
            },title: Text("About",style: TextStyle(color: state.currentOption==MenuOption.about?AppThemes.mainYellow:Colors.white),),),
            ListTile(onTap: (){
              state.change(MenuOption.skills);
            },title: Text("Skills",style: TextStyle(color: state.currentOption==MenuOption.skills?AppThemes.mainYellow:Colors.white),),),
            ListTile(onTap: (){
              state.change(MenuOption.projects);
            },title: Text("Projects",style: TextStyle(color: state.currentOption==MenuOption.projects?AppThemes.mainYellow:Colors.white),),),
            ListTile(onTap: (){
              state.change(MenuOption.contact);
            },title: Text("Contact",style: TextStyle(color: state.currentOption==MenuOption.contact?AppThemes.mainYellow:Colors.white),),),
          ],
        )
      ),
    );
  }
}
