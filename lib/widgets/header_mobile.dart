import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import "package:my_portfolio/styles/style.dart";

class HeaderMobile extends StatelessWidget{
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(context) {
   return  Container(
     height: 50,
     margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
     decoration: kHeaderDecoration,
     child: Row(
       children: [
         SiteLogo(onTap: onLogoTap),
         const Spacer(),
         IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
         SizedBox(width: 15,)
       ],
     ),
   );
  }
}