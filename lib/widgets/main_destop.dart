import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';

class MainDesktop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight/1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hi \n I'm Yuvraj Singh\n A Flutter Devloper",
                style: TextStyle(fontSize: 30
                    , height: 1.5, fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),),
              SizedBox(height: 15,),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){}, child: Text('Get in touch')))
            ],
          ),
          Image.asset("assets/images/yu.jpg",
            width: screenWidth/2,
          )
        ],
      ),
    );
  }

}