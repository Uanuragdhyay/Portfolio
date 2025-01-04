import 'package:flutter/material.dart';
import 'package:portfolio/widgets/project_card.dart';

import '../utils/projectUtils.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
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
          SizedBox(height: 40,),

          //work projects card
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 25,
              runSpacing: 25,
              children: [
                for(int i = 0; i<workProjectUtils.length; i++)
                  ProjectCard(project: workProjectUtils[i]),
              ],
            ),
          )
        ],
      ),

    );
  }
}
