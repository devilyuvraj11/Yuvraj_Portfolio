import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/nav_items.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget{
  const HeaderDesktop({super.key, required this.onnavMenuTap,});
  final Function(int) onnavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.transparent,
              CustomColor.bgLight1
            ],),
            borderRadius: BorderRadius.circular(75)
        ),
        child: Row(
          children: [
           SiteLogo(onTap: (){},),
            const Spacer(),
            for(int i= 0; i < navTitles.length; i++)
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(onPressed: (){
                  onnavMenuTap(i);
                }, child: Text(navTitles[i], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),),
              ),
          ],
        ),
      );
  }

}
