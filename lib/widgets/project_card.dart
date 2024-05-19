import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/utils/projects_utils.dart';
//import 'dart:js' as js;
//import 'package:url_launcher/url_launcher.dart';


class ProjectCardWidget extends StatelessWidget{
  const ProjectCardWidget({
    super.key,
    required this.project,
});
  final ProjectsUtils project;
  @override
  Widget build(BuildContext context) {
    return  Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColor.bgLight2
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [Image.asset(project.image, height: 140.0, width: 260,fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(project.title, style: TextStyle(fontWeight: FontWeight.w600, color: CustomColor.whitePrimary),),
          ),
          //sub title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(project.subtitle, style: TextStyle(fontSize: 12, color: CustomColor.whiteSecondary),),
          ),
          const Spacer(),
          //footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text("Available on: ", style: TextStyle(color: CustomColor.yellowSecondary, fontSize: 10),),
                const Spacer(),
                if(project.ioslink!=null)
                InkWell(
                    onTap: (){
                      //js.context.callMethod("open", [project.ioslink]);
                    },
                    child: const FaIcon(FontAwesomeIcons.apple,size: 17,)),

                if(project.androidlink != null)
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: InkWell(
                      onTap: (){
                        //action
                       // js.context.callMethod("open", [project.androidlink]);
                      },
                      child: const FaIcon(FontAwesomeIcons.android,size: 14,)),
                ),

                if(project.weblink != null)
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: InkWell(
                      onTap: (){
                        //action
                       // js.context.callMethod("open", [project.weblink]);
                      },
                      child: Image.asset("assets/images/WEB.png", width: 14, color: Colors.white,)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}