import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/utils/projects_utils.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class ProjectSection extends StatelessWidget{
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //Wprk project titles
          const Text("Work Projects",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),),
          const SizedBox(
            height: 50,
          ),

          //Work project cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              children: [
                for(int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCardWidget(project: hobbyProjectUtils[i]),
              ],
            ),
          )
        ],
      ),
    );
  }
  
}