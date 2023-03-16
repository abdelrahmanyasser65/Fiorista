import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class DefaultTextFormFiled extends StatelessWidget {
  const DefaultTextFormFiled({Key? key, required this.controller, required this.textInputType, required this.obscureText,
    this.maxLines,
    }) : super(key: key);
  final TextEditingController controller;
  final TextInputType textInputType;
  final bool obscureText;
  final int ?maxLines;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: HeightSized.s2
      ),
      //height: HeightSized.h6,
      child: TextFormField(
        onChanged: (val){},
        controller:controller,
        keyboardType: textInputType,
        cursorColor: Colors.grey,
        obscureText: obscureText,maxLines: maxLines,
        decoration: InputDecoration(

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width:HeightSized.sh2,
                  color: ColorManager.formColor)),

          // contentPadding:
          // EdgeInsets.only(
          //     bottom: HeightSized.s1,
          //     left: HeightSized.s1,
          //     right: HeightSized.s1),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width:HeightSized.sh2,
                  color: ColorManager.formColor)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width:HeightSized.sh2,
                  color: ColorManager.formColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width:HeightSized.sh2,
                  color: ColorManager.formColor)),

        ),
      ),
    );
  }
}
