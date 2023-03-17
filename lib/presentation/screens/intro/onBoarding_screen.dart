import 'package:fiorista/data/models/onBoarding_model.dart';
import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:fiorista/presentation/widget/default_button.dart';
import 'package:fiorista/presentation/widget/default_text.dart';
import 'package:fiorista/presentation/widget/navigator.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController=PageController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              color: ColorManager.white,
                image:currentIndex==0?const DecorationImage(
                  fit: BoxFit.fill,
              image: AssetImage(
                Images.onBoarding1,
              ),

            ):null,
          ),
          child: Column(
            children: [

              SizedBox(

                height: HeightSized.s75,
                width: double.infinity,
                child: PageView.builder(
                  controller: pageController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: boardingList.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex=value;
                    });
                  },
                  itemBuilder: (context, int index) {
                    return
                      currentIndex==0?Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: HeightSized.s4,
                          vertical: HeightSized.s4
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DefaultText(text: Strings.onboardingT1,
                                color: ColorManager.primary,
                                fontSize: FontSized.fs38,
                                fontWeight: FontWeightManager.semiBold),
                            SizedBox(height: HeightSized.s1,),
                            DefaultText(text: Strings.onboardingD1,
                                color: ColorManager.primary,
                                fontSize: FontSized.fs24,
                                fontWeight: FontWeightManager.medium),
                          ],
                        ),
                      ):
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: HeightSized.s3,
                          vertical: HeightSized.s2
                        ),
                        child: Column(
                        children: [
                          Image.asset(
                            boardingList[index].image,
                            height: HeightSized.s30+HeightSized.s8,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: HeightSized.s6,
                          ),
                          DefaultText(
                            text: boardingList[index].title,
                            fontSize: FontSized.fs28,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeightManager.bold,
                            color: ColorManager.titleColor1,
                          ),
                          SizedBox(
                            height: HeightSized.s2,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: HeightSized.s2
                            ),
                            child: DefaultText(
                              text: boardingList[index].description,
                              fontSize: FontSized.fs20,
                              fontWeight: FontWeightManager.medium,
                              color: ColorManager.desColor2,

                            ),
                          ),

                        ],
                    ),
                      );
                  },
                ),
              ),
              Padding(

                padding:  EdgeInsets.only(

                  left: HeightSized.s11,
                  right: HeightSized.s3,
                ),
                child:Column(
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.only(
                        left:currentIndex==0||currentIndex==4? HeightSized.s5:HeightSized.s10
                      ),
                      child: DefaultButton(
                        height:HeightSized.s7 ,
                        width: double.infinity,
                        color: ColorManager.primary,
                        onPressed: ()
                        {
                          if(currentIndex==boardingList.length-1){
                            Navigators.navigateAndFinish(context,
                                Container());
                          }
                          else{
                            pageController.nextPage(duration:const Duration(milliseconds: 200),
                                curve: Curves.easeIn);
                          }
                        },
                        text:currentIndex==0?
                        Strings.letsGetStart:(
                            currentIndex==4?
                            Strings.createAccount:
                            Strings.continueB
                        )
                        ,
                      ),
                    ),
                    SizedBox(height: HeightSized.s2,),
                    SmoothPageIndicator(
                      controller:pageController,
                      count: boardingList.length ,
                      axisDirection: Axis.horizontal,
                      effect:    ExpandingDotsEffect(
                        spacing:  10.0,
                        radius: 10,
                        dotWidth:  HeightSized.s3,
                        dotHeight:  HeightSized.s1+HeightSized.sh5,
                        dotColor:  ColorManager.grey2,
                        activeDotColor:  ColorManager.primary,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: HeightSized.s2
                      ),
                      height:HeightSized.s1 ,
                      width: double.infinity,
                      color: ColorManager.grey2,
                    ),
                  ],
                )
              ),




            ],
          ),
        ),
      ),
    );
  }
}