import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Maindesktop extends StatelessWidget {
  const Maindesktop({super.key});



  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
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
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () async {
                    // Use Uri.parse for web URLs
                    final url = Uri.parse("https://anuragupadhyayresume.tiiny.site/");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      // Handle the case when the URL cannot be launched
                      print("Could not launch $url");
                    }
                  },
                  child: const Text(
                    "Resume",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellowAccent,
                  ),
                ),
              ),

            ],
          ),
          Image.asset(
            "assets/face4.png",
            width: screenWidth / 2,
            height: screenHeight / 2,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
