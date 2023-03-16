import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:fiorista/presentation/widget/default_button.dart';
import 'package:fiorista/presentation/widget/default_text.dart';
import 'package:fiorista/presentation/widget/default_textFormFiled.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        SizedBox(height: HeightSized.s1,),
        DefaultButton(
          onPressed: (){},
          height: HeightSized.s7,
          width: double.infinity,
          text: Strings.logIn, color: ColorManager.primary,
        ),


      ],
    );
  }
}
