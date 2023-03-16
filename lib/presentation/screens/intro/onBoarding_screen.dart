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
          color: ColorManager.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        Navigators.navigateAndFinish(context,
                            const SelectScreen());
                      }, child:DefaultText(
                    text: Strings.skip,
                    fontSize: FontSized.fs16,
                    fontWeight: FontWeightManager.semiBold,
                    color: ColorManager.primary,

                  ) ) ,
                ],
              ),
              Container(
                padding:  EdgeInsets.only(
                  top: HeightSized.s2,
                  left: HeightSized.s1,
                  right: HeightSized.s1,
                ),
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
                    return Column(
                      children: [
                        Image.asset(
                          boardingList[index].image,
                          height: HeightSized.s45,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: HeightSized.s4,
                        ),
                        DefaultText(
                          text: boardingList[index].title,
                          fontSize: FontSized.fs18,
                          fontWeight: FontWeightManager.bold,
                          color: ColorManager.textColor2,
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
                            fontSize: FontSized.fs12,
                            fontWeight: FontWeightManager.semiBold,
                            color: ColorManager.textColor1,
                            textAlign: TextAlign.center,
                          ),
                        ),

                      ],
                    );
                  },
                ),
              ),
              SmoothPageIndicator(
                controller:pageController,
                count: boardingList.length ,
                axisDirection: Axis.horizontal,
                effect:  SlideEffect(
                    spacing:  8.0,
                    radius: 10,
                    dotWidth:  12,
                    dotHeight:  12,
                    strokeWidth:  1.5,
                    dotColor:  Colors.grey,
                    activeDotColor:  ColorManager.primary
                ),
              )
              ,
              Padding(

                padding:  EdgeInsets.only(
                  top: HeightSized.s3,
                  left: HeightSized.s2,
                  right: HeightSized.s2,
                ),
                child:DefaultButton(
                  color: ColorManager.primary,
                  onPressed: ()
                  {
                    if(currentIndex==boardingList.length-1){
                      Navigators.navigateAndFinish(context,const  SelectScreen());
                    }
                    else{
                      pageController.nextPage(duration:const Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                    }
                  },
                  text:currentIndex==boardingList.length-1?Strings.startNow:Strings.next,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}