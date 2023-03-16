import 'package:flutter/material.dart';
class DefaultDivider extends StatelessWidget {
  const DefaultDivider({Key? key, required this.height, required this.width, required this.color}) : super(key: key);
final double height;
final double width;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color:color)
    );
  }
}
