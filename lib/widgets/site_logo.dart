import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/constant/colors.dart';

class SiteLogo extends StatelessWidget{

  const SiteLogo({super.key,this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
          "YS", style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20,
          decoration: TextDecoration.underline,
          color: CustomColor.yellowPrimary
      )),
    );
  }

}