import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:fiorista/presentation/resources/strings.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:fiorista/presentation/widget/default_button.dart';
import 'package:fiorista/presentation/widget/default_text.dart';
import 'package:fiorista/presentation/widget/default_textFormFiled.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);
  final TextEditingController fNameController=TextEditingController();
  final TextEditingController lNameController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController confPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(
                      text: Strings.fName,
                      color: ColorManager.desColor2,
                      fontSize: FontSized.fs14,
                      fontWeight: FontWeightManager.medium),
                  DefaultTextFormFiled(
                      controller: fNameController,
                      textInputType: TextInputType.name,
                      obscureText: false),
                ],
              ),
            ),
            SizedBox(width: HeightSized.s2,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(
                      text: Strings.lName,
                      color: ColorManager.desColor2,
                      fontSize: FontSized.fs14,
                      fontWeight: FontWeightManager.medium),
                  DefaultTextFormFiled(
                      controller: lNameController,
                      textInputType: TextInputType.name,
                      obscureText: false),
                ],
              ),
            ),
          ],
        ),
        DefaultText(
            text: Strings.email,
            color: ColorManager.desColor2,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.medium),
        DefaultTextFormFiled(
            controller: emailController,
            textInputType: TextInputType.emailAddress,
            obscureText: false),
        DefaultText(
            text: Strings.password,
            color: ColorManager.desColor2,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.medium),
        DefaultTextFormFiled(
          controller: passwordController,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          maxLines: 1,
        ),
        DefaultText(
            text: Strings.confirmPassword,
            color: ColorManager.desColor2,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.medium),
        DefaultTextFormFiled(
          controller: confPasswordController,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          maxLines: 1,
        ),
        SizedBox(height: HeightSized.s1,),
        DefaultButton(
          onPressed: (){},
          height: HeightSized.s7,
          width: double.infinity,
          text: Strings.signUp, color: ColorManager.primary,
        ),


      ],
    );
  }
}
