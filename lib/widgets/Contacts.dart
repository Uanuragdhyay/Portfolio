import 'package:flutter/material.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/sns.dart';

import 'customTextField.dart';
import 'dart:js'as js;

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Colors.black54,
      child: Column(
        children: [
          //title
          Text(
            "Get in Touch",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.blueAccent.shade100),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
              maxHeight: 100
            ),
            child: LayoutBuilder(builder:( context,constraints){
              if(constraints.maxWidth>=kMinDesktopWidth){
                return buildnameEmailFieldDesktop();
              }else{
                return buildnameEmailFieldMobile();
              }
          },
          ),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
            ),
            child: Customtextfield(
              hintText: "Your message",
              maxLines: 15,
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //send button

          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Get in touch",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade100),
              ),
            ),
          ),
          const SizedBox(height: 30,),

          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15,),

          //SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  js.context.callMethod("open",[SnsLinks.linkedIn]);
                },
                child: Image.asset("Assets/LI.jpg",width: 35,),
              ),
              InkWell(
                onTap: (){
                  js.context.callMethod("open",[SnsLinks.github]);
                },
                child: Image.asset("Assets/git.jpg",width: 35,),
              ),
              InkWell(
                  onTap: (){
                    js.context.callMethod("open",[SnsLinks.instagram]);
                  },
                  child: Image.asset("Assets/instagram.jpg",width: 35,)
              ),
            ],
          )
        ],
      ),
    );
  }
  Row buildnameEmailFieldDesktop(){
   return  Row(
      children: [
        Flexible(
          child: Customtextfield(
            hintText: "Your Name",
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Flexible(
          child: Customtextfield(
            hintText: "Your e-mail",
          ),
        ),
      ],
    );
  }

  Column buildnameEmailFieldMobile(){
    return  Column(
      children: [
        Flexible(
          child: Customtextfield(
            hintText: "Your Name",
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Flexible(
          child: Customtextfield(
            hintText: "Your e-mail",
          ),
        ),
      ],
    );
  }
}
