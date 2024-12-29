import 'package:flutter/material.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/styles/styles.dart';
import 'package:portfolio/widgets/site_logo.dart';

import '../constants/colors.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: double.maxFinite,
      decoration: kheaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {

            },
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
