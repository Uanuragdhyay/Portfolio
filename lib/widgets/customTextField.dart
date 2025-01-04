import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield(
       {
         super.key,
          this.controller,
          this.maxLines=1,
          this.hintText
       }
       );
  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: TextStyle(
        color: Colors.black,),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          fillColor: Colors.white60,
          focusedBorder: getInputBorder,
          enabledBorder: getInputBorder,
          border:getInputBorder,
          hintText: hintText,
          hintStyle:  const TextStyle(
            color: Colors.black,
          )
      ),
    );
  }
  OutlineInputBorder get getInputBorder{
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
