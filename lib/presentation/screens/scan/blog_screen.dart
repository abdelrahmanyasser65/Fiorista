import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:fiorista/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics:const BouncingScrollPhysics(),
        children: [
          Image.asset(Images.blogPlant,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: HeightSized.s4,
              horizontal: HeightSized.s3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(
                  text: Strings.titleBlog,
                  color: ColorManager.primary,
                    fontWeight: FontWeightManager.semiBold,
                  fontSize: FontSized.fs18
                  ,
                ),
                SizedBox(height: HeightSized.s2,),
                DefaultText(
                  text: Strings.desBlog3+Strings.desBlog2+Strings.desBlog2+
                      Strings.desBlog2+
                      Strings.desBlog+Strings.desBlog2,
                  color: ColorManager.grey,
                  height: 1.6,
                  fontWeight: FontWeightManager.regular,
                  fontSize: FontSized.fs14
                  ,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
