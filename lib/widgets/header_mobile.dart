import 'package:flutter/material.dart';
import 'package:portfolio/styles/styles.dart';
import 'package:portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback ? onLogoTap;
  final VoidCallback ? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40,5,20,5),
      decoration: kheaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap),
          Spacer(),
          IconButton(onPressed: onMenuTap,
            icon: Icon(Icons.menu),
          ),
          SizedBox(width: 15,),
        ],
      ),
    );
  }
}
