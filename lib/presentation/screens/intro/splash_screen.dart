import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/constants.dart';
import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:fiorista/presentation/screens/intro/onBoarding_screen.dart';
import 'package:fiorista/presentation/widget/navigator.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(
    const  Duration(seconds: AppConstants.splashDelay),
        (){
      Navigators.navigateAndFinish(context, const OnBoardingScreen());
        }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset(
          Images.logo,
          height: HeightSized.s17,
        )
      ),
    );
  }
}
