
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

CurvedNavigationBarItem buildCurvedNavigationBarItem({
  text,image,index
}) {
  return CurvedNavigationBarItem(
    child:SvgPicture.asset(image),
    label:text ,
    labelStyle:const TextStyle(
      color: ColorManager.white,
      fontWeight: FontWeightManager.semiBold
    )
  );
}
