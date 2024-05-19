import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';

class CustomTextfield extends StatelessWidget{

  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;

  const CustomTextfield({super.key, this.controller, this.maxLines = 1, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(color: CustomColor.scaffoldBg,),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        fillColor: CustomColor.whiteSecondary,
        filled: true,
        focusedBorder:getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: const TextStyle(color: CustomColor.hintDark),
      ),
    );
  }
  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}