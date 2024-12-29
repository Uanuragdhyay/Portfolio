import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [

          //main
           Container(
             height: 500,
             width: double.maxFinite,

           ),

          //skills
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

          //projects
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

          //Contact
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

        ],
      ),
    );
  }
}
