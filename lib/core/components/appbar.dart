import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WebAppBar extends StatelessWidget with PreferredSizeWidget{
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(4.h),
      child: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){}, child:const Text("About",)),
            _space(),
            TextButton(onPressed: (){}, child:const Text("Skills")),
            _space(),
            TextButton(onPressed: (){}, child:const Text("Projects")),
            _space(),
            TextButton(onPressed: (){}, child:const Text("Contact")),
            _space(),
          ],
        ),
      ),
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
