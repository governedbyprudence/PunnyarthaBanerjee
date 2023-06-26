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
import '../themes/Theme.dart';

class SkillsPageRoute extends StatefulWidget {
  static const routeName= "/Skills";
  const SkillsPageRoute({Key? key}) : super(key: key);

  @override
  State<SkillsPageRoute> createState() => _SkillsPageRouteState();
}
class Skill
{
  String title;
  Widget icon;
  String level;
  Skill({required this.title,required this.icon,required this.level});
}
enum LightMode{
  light,
  dark
}
class _SkillsPageRouteState extends State<SkillsPageRoute> with SingleTickerProviderStateMixin{
  late List<Skill> skills;
  LightMode lightMode = LightMode.light;
  late Animation<Color?> backgroundColor,
      flutterColor,
      djangoColor,
      pythonColor,
      jiraColor,
      gitColor,
      dockerColor,
      linuxColor,
      javascriptColor,
      htmlColor,
      cssColor,
      nodeColor,
      textColor,
      bulbColor;
  late AnimationController backgroundColorController;
  bool isWithme = false;
  @override
  void initState() {
    super.initState();
    backgroundColorController = AnimationController(vsync: this,duration:const Duration(milliseconds: 600));
    backgroundColor = ColorTween(begin: Colors.white,end: AppThemes.deepViolet).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    textColor = ColorTween(begin: Colors.black,end:Colors.white).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    bulbColor = ColorTween(begin: Colors.white,end:Colors.yellow[600]!).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    flutterColor = ColorTween(begin: Colors.black,end: Colors.lightBlue).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    djangoColor = ColorTween(begin: Colors.black,end: Colors.green).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    pythonColor = ColorTween(begin: Colors.black,end: Colors.white).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    jiraColor = ColorTween(begin: Colors.black,end: Colors.blue[800]!).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    gitColor = ColorTween(begin: Colors.black,end: Colors.red[800]!).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    dockerColor = ColorTween(begin: Colors.black,end: Colors.blue).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    linuxColor = ColorTween(begin: Colors.black,end: Colors.blueGrey).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    javascriptColor = ColorTween(begin: Colors.black,end: Colors.yellow[800]!).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    htmlColor = ColorTween(begin: Colors.black,end: Colors.red[400]!).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    cssColor = ColorTween(begin: Colors.black,end: Colors.blue[900]!).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    nodeColor = ColorTween(begin: Colors.black,end: Colors.green[600]!).animate(backgroundColorController)..addListener(() {
      setState(() {
      });
    });
    skills = [
      Skill(title: "Flutter", icon: Icon(size:50,SimpleIcons.flutter,color: flutterColor.value,),level: "Advanced"),
      Skill(title: "Django Rest Framework", icon: const Icon(size:50,SimpleIcons.django),level: "Advanced"),
      Skill(title: "Python", icon: const Icon(size:50,SimpleIcons.python),level: "Advanced"),
      Skill(title: "Jira", icon: const Icon(size:50,SimpleIcons.jira),level: "Intermediate"),
      Skill(title: "Git", icon: const Icon(size:50,SimpleIcons.git),level: "Intermediate"),
      Skill(title: "Docker", icon: const Icon(size:50,SimpleIcons.docker),level: "Beginner"),
      Skill(title: "Linux", icon: const Icon(size:50,SimpleIcons.linux),level: "Intermediate"),
      Skill(title: "Javascript", icon: const Icon(size:50,SimpleIcons.javascript),level: "Intermediate"),
      Skill(title: "HTML", icon: const Icon(size:50,SimpleIcons.html5),level: "Intermediate"),
      Skill(title: "CSS", icon: const Icon(size:50,SimpleIcons.css3),level: "Intermediate"),
      Skill(title: "English", icon: const Icon(size:50,Icons.person),level: "Advanced"),
      Skill(title: "Hindi", icon: const Icon(size:50,Icons.person),level: "Advanced"),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<DeviceTypeProvider>(
        builder: (context,state,child) {
          return Scaffold(
            backgroundColor: backgroundColor.value,
            extendBodyBehindAppBar: true,
            appBar: state.isMobile?AppBar():WebAppBar(backgroundColor: Colors.transparent,),
            body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: state.isMobile?_mobileBody():_webBody(),
            ),
            drawer: state.isMobile? const CustomDrawer():null,
          );
        }
    );
  }
  Widget _webBody(){
    return MouseRegion(
      child: SingleChildScrollView(
        physics:const ClampingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 2.h),
              Icon(Icons.light_mode,color: bulbColor.value,),
              Switch(value: lightMode==LightMode.dark?false:true,
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.grey,
                  onChanged:(value){
                if(value==true){
                  setState(() {
                    lightMode = LightMode.light;
                  });
                  backgroundColorController.reverse();
                }
                else{
                  setState(() {
                    lightMode = LightMode.dark;
                  });
                  backgroundColorController.forward();
                }
              }),
              GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.097
              ),
                children: [
                    Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.flutter,size: 50,color: flutterColor.value,),
                          Column(
                            children: [
                              Text("Flutter",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Advanced",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),
                  Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.python,size: 50,color: pythonColor.value,),
                          Column(
                            children: [
                              Text("Python",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Advanced",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.django,size: 50,color: djangoColor.value,),
                          Column(
                            children: [
                              Text("Django Rest Framework",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Advanced",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),
                  Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.jira,size: 50,color: jiraColor.value,),
                          Column(
                            children: [
                              Text("Jira",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.git,size: 50,color: gitColor.value,),
                          Column(
                            children: [
                              Text("Git",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.docker,size: 50,color: dockerColor.value,),
                          Column(
                            children: [
                              Text("Docker",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.linux,size: 50,color: linuxColor.value,),
                          Column(
                            children: [
                              Text("Linux",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.javascript,size: 50,color: javascriptColor.value,),
                          Column(
                            children: [
                              Text("JavaScript",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.html5,size: 50,color: htmlColor.value,),
                          Column(
                            children: [
                              Text("HTML",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.css3,size: 50,color: cssColor.value,),
                          Column(
                            children: [
                              Text("CSS",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.nodedotjs,size: 50,color: nodeColor.value,),
                          Column(
                            children: [
                              Text("Node",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Beginner",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
  Widget _mobileBody(){
    return MouseRegion(
      child: SingleChildScrollView(
        physics:const ClampingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 2.h),
              Icon(Icons.light_mode,color: bulbColor.value,),
              Switch(value: lightMode==LightMode.dark?false:true,
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.grey,
                  onChanged:(value){
                if(value==true){
                  setState(() {
                    lightMode = LightMode.light;
                  });
                  backgroundColorController.reverse();
                }
                else{
                  setState(() {
                    lightMode = LightMode.dark;
                  });
                  backgroundColorController.forward();
                }
              }),
              GridView(
                padding:const EdgeInsets.symmetric(vertical: 20),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.7
              ),
                children: [
                    Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.flutter,size: 50,color: flutterColor.value,),
                          Column(
                            children: [
                              Text("Flutter",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Advanced",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),
                  Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.python,size: 50,color: pythonColor.value,),
                          Column(
                            children: [
                              Text("Python",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Advanced",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.django,size: 50,color: djangoColor.value,),
                          Column(
                            children: [
                              Text("Django Rest Framework",textAlign: TextAlign.center,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Advanced",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),
                  Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.jira,size: 50,color: jiraColor.value,),
                          Column(
                            children: [
                              Text("Jira",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.git,size: 50,color: gitColor.value,),
                          Column(
                            children: [
                              Text("Git",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.docker,size: 50,color: dockerColor.value,),
                          Column(
                            children: [
                              Text("Docker",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.linux,size: 50,color: linuxColor.value,),
                          Column(
                            children: [
                              Text("Linux",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.javascript,size: 50,color: javascriptColor.value,),
                          Column(
                            children: [
                              Text("JavaScript",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.html5,size: 50,color: htmlColor.value,),
                          Column(
                            children: [
                              Text("HTML",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.css3,size: 50,color: cssColor.value,),
                          Column(
                            children: [
                              Text("CSS",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Intermediate",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),Container(
                    padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(SimpleIcons.nodedotjs,size: 50,color: nodeColor.value,),
                          Column(
                            children: [
                              Text("Node",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color:textColor.value),),
                              Text("Beginner",style: TextStyle(fontSize: 10.sp,color:textColor.value),)
                            ],
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }

}
