import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,this.onTap});
  final VoidCallback ? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0,top:8,right: 8,bottom: 8 ),
        child: Text(
          "A U",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: Colors.yellow[300],
          ),
        ),
      ),
    );
  }
}
