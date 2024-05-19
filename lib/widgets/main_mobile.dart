import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';

class MainMobile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 600.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avtar image
          ShaderMask(
              shaderCallback: (bounds){
                return LinearGradient(colors: [
                  CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.scaffoldBg.withOpacity(0.6)]).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset("assets/images/yu.jpg", width: screenWidth,)),
          const SizedBox(height: 5),
          //into message
          Text("Hi \n I'm Yuvraj Singh\n A Flutter Devloper",
            style: const TextStyle(fontSize: 24
                , height: 1.5, fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),),
          const SizedBox(height: 20,),
          //contact button
          SizedBox(
            width: 170,
            child: ElevatedButton(onPressed: (){}, child: const Text('Get in touch'),),),
        ],
      ),
    );
  }

}