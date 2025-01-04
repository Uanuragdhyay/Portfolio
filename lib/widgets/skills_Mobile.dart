import 'package:flutter/material.dart';

import '../constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //platforms
        for (int i=0;i<platformItems.length;i++)
          Container(
            margin: EdgeInsets.only(bottom: 5.0),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
              leading: Image.asset(platformItems[i]["img"],width: 25,),
              title: Text(platformItems[i]["title"]),
            ),
          ),
        const SizedBox(height: 50,),
        //Skills
        Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            for(int i = 0; i< skillItems.length; i++)
              Chip(
                padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                label: Text(skillItems[i]["title"]),
                avatar: Image.asset(skillItems[i]["img"]),
              )
          ],
        )


      ],
    );
  }
}
