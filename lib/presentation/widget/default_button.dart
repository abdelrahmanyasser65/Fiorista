import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:fiorista/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.onPressed,required this.height,
    required  this.width, required this.text,
    required this.color, this.colorText=Colors.white,

  })
      : super(key: key);
  final Function() onPressed;
  final String text;
  final Color color;
  final Color colorText;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(HeightSized.s1+HeightSized.sh3),
        ),
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: Center(
          child: DefaultText(
            text: text,
            color: colorText,
            fontWeight: FontWeightManager.semiBold,
            fontSize: FontSized.fs18,
          ),
        ),
      ),
    );
  }
}