import 'package:fiorista/data/models/home_model.dart';
import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/resources/fonts.dart';
import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';
import 'package:fiorista/presentation/resources/values.dart';
import 'package:fiorista/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset(Images.filterIcon),
        actions: [
          Image.asset(Images.cartIcon)
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: HeightSized.s2
        ),
        children: [
          DefaultText(
            text: Strings.discover,
            color: ColorManager.primary,
            fontSize: FontSized.fs20,
            fontWeight: FontWeightManager.semiBold,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: HeightSized.s2
            ),
            height: HeightSized.s5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorManager.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.symmetric(
              horizontal: HeightSized.s2
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: ColorManager.grey,
                ),
                SizedBox(width: HeightSized.s1,) ,
                DefaultText(
                    text: Strings.search,
                    color: ColorManager.grey,
                    fontSize: FontSized.fs14,
                    fontWeight: FontWeightManager.medium),

              ],
            ),
          ),
          SizedBox(
            height: HeightSized.s5,

            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics:const BouncingScrollPhysics(),
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      setState(() {
                        currentIndex=index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: HeightSized.s2,
                        vertical: HeightSized.s1
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:currentIndex==index? ColorManager.primary:
                              ColorManager.black.withOpacity(0.05)
                      ),
                      child: DefaultText(
                        text: category[index],
                        color: currentIndex==index?ColorManager.white:ColorManager.primary,
                        fontWeight: FontWeightManager.semiBold,
                        fontSize: FontSized.fs16,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context,index)=>SizedBox(
                  width: HeightSized.s2,
                ),
                itemCount: category.length),
          ),
        ],
      ),
    );
  }
}
