import 'package:flutter/material.dart';
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(bottom: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text(
        "Made by Anurag Upadhyay with Flutter 3.10",
        style:TextStyle(
          fontWeight:FontWeight.w400,
        ) ,
      ),
    );
  }
}
