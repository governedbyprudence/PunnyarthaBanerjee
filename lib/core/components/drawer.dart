import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.black45,
      child: ListView(
        children: [
          SizedBox(height: 30.sp,),
          ListTile(onTap: (){},title: const Text("About"),),
          ListTile(onTap: (){},title: const Text("Skills"),),
          ListTile(onTap: (){},title: const Text("Portfolio"),),
          ListTile(onTap: (){},title: const Text("Contact"),),
        ],
      )
    );
  }
}
