import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:fiorista/presentation/screens/scan/blog_screen.dart';
import 'package:fiorista/presentation/widget/default_button.dart';
import 'package:fiorista/presentation/widget/default_text.dart';
import 'package:fiorista/presentation/widget/navigator.dart';
import 'package:flutter/material.dart';
class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightSized.s70,
      child: ListView(
        physics:const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
            vertical: HeightSized.s3,
            horizontal: HeightSized.s2
        ),
        children: [
          Image.asset(Images.cardBlog),
          SizedBox(height: HeightSized.s1,),
          DefaultText(
              text: Strings.snakePlant,
              color: ColorManager.primary,
              fontSize: FontSized.fs20,
              fontWeight: FontWeightManager.semiBold),
          SizedBox(height: HeightSized.s1,),
          DefaultText(
              text: Strings.desBlog,
              color: ColorManager.grey,
              fontSize: FontSized.fs12,
              height: 1.6,
              fontWeight: FontWeightManager.regular),
          SizedBox(height: HeightSized.s1,),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(
                      text: Strings.type,
                      color: ColorManager.primary,
                      fontSize: FontSized.fs14,
                      fontWeight: FontWeightManager.semiBold),
                  SizedBox(height: HeightSized.s1,),
                  DefaultText(
                      text: Strings.outdoor,
                      color: ColorManager.grey,
                      fontSize: FontSized.fs12,
                      fontWeight: FontWeightManager.medium),
                ],
              ),
              SizedBox(width: HeightSized.s2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(
                      text: Strings.size,
                      color: ColorManager.primary,
                      fontSize: FontSized.fs14,
                      fontWeight: FontWeightManager.semiBold),
                  SizedBox(height: HeightSized.s1,),
                  DefaultText(
                      text: Strings.medium,
                      color: ColorManager.grey,
                      fontSize: FontSized.fs12,
                      fontWeight: FontWeightManager.medium),
                ],
              ),
              SizedBox(width: HeightSized.s2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(
                      text: Strings.level,
                      color: ColorManager.primary,
                      fontSize: FontSized.fs14,
                      fontWeight: FontWeightManager.semiBold),
                  SizedBox(height: HeightSized.s1,),
                  DefaultText(
                      text: Strings.easy,
                      color: ColorManager.grey,
                      fontSize: FontSized.fs12,
                      fontWeight: FontWeightManager.medium),
                ],
              ),
            ],
          ),
          SizedBox(height: HeightSized.s1,),
          DefaultText(
              text: Strings.commonSnake,
              color: ColorManager.primary,
              fontSize: FontSized.fs18,
              fontWeight: FontWeightManager.semiBold),
          SizedBox(height: HeightSized.s1,),
          DefaultText(
              text: Strings.desBlog2+Strings.desBlog,
              color: ColorManager.grey,
              fontSize: FontSized.fs12,
              fontWeight: FontWeightManager.regular,
              height:1.6
          ),
          SizedBox(height: HeightSized.s2,),
          DefaultButton(
              onPressed: (){
                Navigators.navigateTo(context,const BlogScreen());
              },
              height: HeightSized.s7,
              width: double.infinity,
              text: Strings.goBlog,
              color: ColorManager.primary)
        ],
      ),

    );
  }
}
