import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/skill_items.dart';
import 'package:portfolio/styles/styles.dart';
import 'package:portfolio/utils/projectUtils.dart';
import 'package:portfolio/widgets/MainDesktop.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/project_card.dart';
import 'package:portfolio/widgets/site_logo.dart';
import 'package:portfolio/widgets/skills_Mobile.dart';
import 'package:portfolio/widgets/skills_desktop.dart';

import '../widgets/drawer_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //main
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            if (constraints.maxWidth >= kMinDesktopWidth)
             const Maindesktop() else const MainMobile(),


            //skills
            Container(
              width: screenWidth,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              color: Colors.black45,
              child:   Column(
                mainAxisSize: MainAxisSize.min,
                children: [
            //title
                 const Text("What I can do",
                    style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                  ),
           SizedBox(height: 40,),

              //platform and skills
                 if(constraints.maxWidth>=kMedDesktopWidth)
                   const SkillsDesktop()
                  else
                    const SkillsMobile()
                ],
              ),
            ),

            //PROJECTS`
            Container(

              width: screenWidth,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              child: Column(
                children: [
                //work projects title
                  const Text("Projects",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  
               //work projects card
                  ProjectCard(project: workProjectUtils.first)
                ],
              ),

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
    });
  }
}
