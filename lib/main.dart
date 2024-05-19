import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/nav_items.dart';
import 'package:my_portfolio/constant/sns_links.dart';
//import 'package:my_portfolio/constant/skill_items.dart';
//import 'package:my_portfolio/utils/projects_utils.dart';
import 'package:my_portfolio/widgets/skill_Mobile.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_destop.dart';
//import 'package:my_portfolio/widgets/project_card.dart';
import 'package:my_portfolio/widgets/project_section.dart';
//import 'package:my_portfolio/widgets/site_logo.dart';
//import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/constant/size.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/widgets/skill_desktop.dart';
import 'package:my_portfolio/widgets/text_field.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/footer.dart';
import 'dart:js'as js;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

     return LayoutBuilder(
      builder: (context, constratints) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        key: scaffoldkey,
          backgroundColor: CustomColor.scaffoldBg,
        endDrawer:constratints.maxWidth>=kmindesktopWidth? null: DrawerMobile(onNavItemTap: (int navIndex){
          //call funtion
          scaffoldkey.currentState?.closeEndDrawer();
          scrollToSection(navIndex);
        },),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [//Main
              SizedBox(key: navbarKeys.first,),
              if(constratints.maxWidth>=kmindesktopWidth)
             HeaderDesktop(onnavMenuTap: (int navIndex){
               //call function
               scrollToSection(navIndex);
             },)
              else
              HeaderMobile(
                onLogoTap: (){},
                onMenuTap: (){
                  scaffoldkey.currentState?.openEndDrawer();
                },
              ),
              if(constratints.maxWidth>=kmindesktopWidth)
             MainDesktop()
              else
                MainMobile(),
              //Skill
              Container(
                key: navbarKeys[1],
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text("What I can do ",
                      style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold, color: CustomColor.whitePrimary, fontStyle: FontStyle.italic),),
                    const SizedBox(height: 50,),
                    //platform and Skills
                    if(constratints.maxWidth>= kMeddesktopWidth)
                      SkillDesktop()
                    else
                      SkillMobile(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              //         //Projects

               ProjectSection(key: navbarKeys[2]),
               const SizedBox(height: 30,),
              //Contact
              ContactSection(key: navbarKeys[3]),

              const SizedBox(height: 30,),
              //Footer
              const Footer(),
             ],
           ),
        )
      );
      }
     );
  }


  void scrollToSection(int navIndex){
    if(navIndex == 4){
      //open a blog page
      js.context.callMethod('open',[SnsLinks.youtube]);
      return ;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,);
  }
}
