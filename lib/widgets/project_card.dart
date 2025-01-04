import 'package:flutter/material.dart';
import 'package:portfolio/utils/projectUtils.dart';
import 'dart:js'as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project
  });
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 280,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image,
            height: 160,
            width: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),
            ),
          ),

          //SUBTITLE
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subTitle,
              style: const TextStyle(
                  fontSize: 10,
                  color: Colors.black
              ),
            ),
          ),
          const Spacer(),

          //footer

          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10),
            child: Row(
              children: [
                Text("Available on :  ",
                  style: TextStyle(
                      color: Colors.blue.shade200,
                      fontSize: 12),
                ),
                const Spacer(),
                if(project.GitHubLink!=null)
                  Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: InkWell(
                      onTap: (){
                        js.context.callMethod("open",[project.GitHubLink]);
                      },
                      child: Image.asset(
                        "Assets/git.jpg",
                        height: 28,)
                  ),
                )
              ],
            ),


          )

        ],
      ),
    );
  }
}
