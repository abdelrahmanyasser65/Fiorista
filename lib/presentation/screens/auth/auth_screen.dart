import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:fiorista/presentation/screens/auth/login_screen.dart';
import 'package:fiorista/presentation/screens/auth/register_screen.dart';
import 'package:fiorista/presentation/widget/default_divder.dart';
import 'package:fiorista/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin=false;
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Stack(
       children: [
         Positioned(
             left: HeightSized.s30+HeightSized.s8,
             top: HeightSized.s30,
             child: Image.asset(Images.authRight)),
         Positioned(
             top: HeightSized.s50,
             child: Image.asset(Images.authLeft)),
         ListView(
           physics:const BouncingScrollPhysics(),
           padding: EdgeInsets.symmetric(
               vertical: HeightSized.s9,
               horizontal: HeightSized.s3
           ),
           children: [
             Center(child: Image.asset(Images.logo)),
             Padding(
               padding: EdgeInsets.symmetric(
                     vertical: HeightSized.s5
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   InkWell(
                     onTap: () {
                       setState(() {
                         isLogin=true;
                       });
                     },
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         DefaultText(
                           text: Strings.logIn,
                           fontSize: FontSized.fs18,
                           color: isLogin
                               ? ColorManager.titleColor1
                               : ColorManager.desColor2,
                           fontWeight: FontWeightManager.semiBold,
                         ),
                         isLogin ? DefaultDivider(
                           height: HeightSized.sh4,
                             width: HeightSized.s6,
                           color: ColorManager.primary,
                         ) : Container(

                         ),
                       ],
                     ),
                   ),
                   InkWell(
                     onTap: () {
                       setState(() {
                         isLogin=false;
                       });
                     },
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         DefaultText(
                           text: Strings.signUp,
                           fontSize: FontSized.fs18,
                           color: !isLogin
                               ? ColorManager.titleColor1
                               : ColorManager.desColor2,
                           fontWeight: FontWeightManager.semiBold,
                         ),
                         !isLogin ? DefaultDivider(
                           height: HeightSized.sh4,
                           width: HeightSized.s7,
                           color: ColorManager.primary,
                         ) : Container(),
                       ],
                     ),
                   )
                 ],
               ),
             ),
            isLogin? LoginScreen():RegisterScreen(),
             Padding(
               padding: EdgeInsets.symmetric(
                   horizontal: HeightSized.s3,
                   vertical: HeightSized.s3
               ),
               child: Row(
                 children: [
                   Expanded(
                       child: DefaultDivider(
                         height:HeightSized.sh1 ,
                         width: HeightSized.s3,
                         color: ColorManager.desColor2,
                       )),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: HeightSized.s1),
                     child: DefaultText(
                         text: Strings.continueWith,
                         color: ColorManager.desColor2,
                         fontSize: FontSized.fs10,
                         fontWeight: FontWeightManager.medium),
                   ),
                   Expanded(
                       child: DefaultDivider(
                         height:HeightSized.sh1 ,
                         width: HeightSized.s3,
                         color: ColorManager.desColor2,
                       )),
                 ],
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset(Images.google),
                 SizedBox(width: HeightSized.s5,),
                 Image.asset(Images.facebook)
               ],
             )
           ],
         ),
       ],
     ),
    );
  }

}
