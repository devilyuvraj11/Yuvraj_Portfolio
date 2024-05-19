import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/constant/colors.dart';

class Footer extends StatelessWidget{
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text("This is design or developed by Yuvraj Sing with Flutter", style: TextStyle(fontWeight: FontWeight.w400, color: CustomColor.whiteSecondary),),
    );
  }

}