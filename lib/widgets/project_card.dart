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
      height: 430,
      width: 300,
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
            height: 300,
            width: 300,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 8, 8),
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
            padding: const EdgeInsets.fromLTRB(12, 0, 8, 12),
            child: Text(
              project.subTitle,
              style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
          ),
          const Spacer(),

          //footer

          // if(project.GitHubLink!=null)
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8),
            child: Row(
              children: [
                Text("Source Code Available on :  ",
                  style: TextStyle(
                      color: Colors.blue.shade200,
                      fontSize: 12),
                ),
                const Spacer(),

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
