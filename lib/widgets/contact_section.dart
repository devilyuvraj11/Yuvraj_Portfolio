import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/size.dart';
import 'package:my_portfolio/constant/sns_links.dart';
import 'package:my_portfolio/widgets/text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget{
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            "Get in Touch",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: Row(
              children: [
                Flexible(
                  child: LayoutBuilder(builder: (context, constraints){
                    if(constraints.maxWidth>=kmindesktopWidth){
                      return buildNameEmailFieldDesktop();
                    }
                   // else
                      return buildNameEmailFieldMobile();
                  },),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: const CustomTextfield(hintText: "Your Message", maxLines: 15,)),

          const SizedBox(height: 20,),
          // Submit button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {}, // Non-constant onPressed callback
                child: const Text('Get in touch'),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: const Divider()),
          //SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                  onTap: (){
                    js.context.callMethod('open',[SnsLinks.github]);
                  },
                  child: const FaIcon(FontAwesomeIcons.github,size: 20,)),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open',[SnsLinks.facebook]);
                  },
                  child: const FaIcon(FontAwesomeIcons.facebook, size: 20,)),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open',[SnsLinks.instagram]);
                  },child: const FaIcon(FontAwesomeIcons.instagram, size: 20,)),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open',[SnsLinks.telegram]);
                  },child: const FaIcon(FontAwesomeIcons.telegram, size: 20,)),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open',[SnsLinks.linkedIn]);
                  },child: const FaIcon(FontAwesomeIcons.linkedinIn, size: 20,))
            ],
          )
        ],
      ),
    );
  }
Row buildNameEmailFieldDesktop(){
    return Row(
      children: [
        Flexible(child: CustomTextfield(
          hintText: "Your name",
        ),),
        const SizedBox(width: 15,),
        Flexible(child: CustomTextfield(
          hintText: "Your email",
        ),),
      ],
    );
}

  Column buildNameEmailFieldMobile(){
    return Column(
      children: [
        Flexible(child: CustomTextfield(
          hintText: "Your name",
        ),),
        const SizedBox(height: 15,),
        Flexible(child: CustomTextfield(
          hintText: "Your email",
        ),),
      ],
    );
  }
}