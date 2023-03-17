import 'package:flutter/material.dart';
class DefaultText extends StatelessWidget {
  const DefaultText({Key? key, required this.text,
    required this.color, required this.fontSize,
    required this.fontWeight,  this.textAlign, this.maxLines,
  this.height=1.2
  }) : super(key: key);
  final String text;
  final Color color;
  final double fontSize;
  final TextAlign ?textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;
  final double?height;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontWeight: fontWeight,height:height,
        fontSize: fontSize,
        overflow: TextOverflow.visible,
        color: color,
      ),
    );
  }
}