import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/skill_items.dart';

class SkillDesktop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Platform
        ConstrainedBox(
          constraints: const BoxConstraints(
              maxWidth: 450
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for(int i = 0; i < platformItems.length; i++)
                Container(width: 200,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    leading: Image.asset(platformItems[i]["img"], width: 26, color: Colors.blue,),
                    title: Text(platformItems[i]["title"]),
                  ),),
            ],
          ),
        ),
        const SizedBox(width: 50,),
        //Skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for(int i = 0; i<skillItems.length; i++)
                  Chip(
                    backgroundColor: CustomColor.bgLight2,
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    label: Text(skillItems[i]["title"]), avatar: Image.asset(skillItems[i]["img"]),),
              ],
            ),
          ),
        )
      ],
    );
  }

}