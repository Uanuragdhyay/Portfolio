import 'package:flutter/material.dart';

class Maindesktop extends StatelessWidget {
  const Maindesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return
      Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        height: screenSize.height / 1.2,
        constraints: BoxConstraints(
          minHeight: 350,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi, \nI'm Anurag Upadhyay \nA Flutter Developer",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.5),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  // key: gitouchKey,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
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
            Image.asset(
              "Assets/face4.png",
              width: screenWidth / 2,
              height: screenHeight / 2,
              alignment: Alignment.center,
            ),
          ],
        ),
      )
    ;
  }
}
