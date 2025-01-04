import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/skill_items.dart';
import 'package:portfolio/styles/styles.dart';
import 'package:portfolio/utils/projectUtils.dart';
import 'package:portfolio/widgets/MainDesktop.dart';
import 'package:portfolio/widgets/customTextField.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/project_card.dart';
import 'package:portfolio/widgets/project_section.dart';
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
            const ProjectSection(),

            //CONTACT
            Container(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              color: Colors.black54,
              child: Column(
                children: [
                  //title
                  Text("Get in Touch",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color:Colors.blueAccent.shade100
                  ),
                  ),
               const SizedBox(height: 50,),
                  Row(
                    children: [
                      Flexible(
                          child: Customtextfield(
                            hintText: "Your Name",
                          ),
                      ),
                      const SizedBox(width: 15,),
                      Flexible(
                        child: Customtextfield(
                          hintText: "Your e-mail",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                   Customtextfield(
                      hintText: "Your message",
                      maxLines: 20,
                    ),

                  //send button


                ],
              ),
            ),

            //FOOTER
            Container(
              height: 500,
              width: double.maxFinite,
            ),
          ],
        ),
      );
    });
  }


}
