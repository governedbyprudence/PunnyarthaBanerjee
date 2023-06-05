import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WebAppBar extends StatelessWidget with PreferredSizeWidget{
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        ElevatedButton(onPressed: (){}, child:const Text("About")),
        _space(),
        ElevatedButton(onPressed: (){}, child:const Text("Skills")),
        _space(),
        ElevatedButton(onPressed: (){}, child:const Text("Projects")),
        _space(),
        ElevatedButton(onPressed: (){}, child:const Text("Contact")),
        _space()
      ],
    );
  }
  Widget _space(){
    return SizedBox(width: 10.w,);
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
