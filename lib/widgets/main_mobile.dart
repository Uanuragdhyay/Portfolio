import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;


    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
//avatar img
          ShaderMask(
            shaderCallback: (bounds){
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.4),
                CustomColor.scaffoldBg.withOpacity(0.4),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "Assets/face4.png",width: screenWidth,height: screenHeight/2,
            ),
          ),
          SizedBox(height: 15,),


//intro text
          const Text(
            "Hi, \nI'm Anurag Upadhyay \nA Flutter Developer",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.5),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 180,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Get in touch",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellowAccent),
            ),
          ),
        ],
      ),
    );
  }
}
