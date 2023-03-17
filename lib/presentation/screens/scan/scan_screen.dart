import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:fiorista/presentation/screens/scan/bottom_sheet.dart';
import 'package:fiorista/presentation/widget/default_button.dart';
import 'package:fiorista/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ScanScreen extends StatelessWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.plantL)
          )
        ),
        child: Stack(
          children: [
            Positioned(
                top: HeightSized.s60
                ,left: HeightSized.s18,
                child: Image.asset(Images.scanQr)),
            Positioned(
                top: HeightSized.s40
                ,left: HeightSized.s6,
                child: Image.asset(Images.scanR,
                  height: HeightSized.s30,
                )),
            InkWell(
              onTap: (){
               showModalBottomSheet(
                   context: context,
                   shape:const RoundedRectangleBorder(
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(30),
                       topRight: Radius.circular(30),
                     )
                   ),
                   isScrollControlled: true,
                   builder: (context){
                    return const BottomSheetScreen();
                   }
               );


              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: HeightSized.s2,
                  right: HeightSized.s2,
                  top: HeightSized.s70+HeightSized.s3
                ),
                child: Image.asset(Images.cardScan,

                ),
              ),
            ),
            Positioned(
                top: HeightSized.s75
                ,left: HeightSized.s4,
                child: Image.asset(Images.plantS,

                )),
            Positioned(
                top: HeightSized.s75+HeightSized.s4
                ,left: HeightSized.s30+HeightSized.s6,
                child: Image.asset(Images.arrowIcon,

                )),

          ],
        ),
      )
    );
  }
}
