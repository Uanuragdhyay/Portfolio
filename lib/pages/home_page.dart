import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/styles/styles.dart';
import 'package:portfolio/widgets/MainDesktop.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/site_logo.dart';

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
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),

            //projects
            Container(
              height: 500,
              width: double.maxFinite,
              // color: Colors.blueGrey,
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
