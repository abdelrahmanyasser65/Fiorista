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
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset(Images.filterIcon),
        actions: [Image.asset(Images.cartIcon)],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(
            left: HeightSized.s2,
            right: HeightSized.s2,
            bottom: HeightSized.s3),
        children: [
          DefaultText(
            text: Strings.discover,
            color: ColorManager.primary,
            fontSize: FontSized.fs20,
            fontWeight: FontWeightManager.semiBold,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: HeightSized.s2),
            height: HeightSized.s5,
            width: double.infinity,
            decoration: BoxDecoration(
                color: ColorManager.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(horizontal: HeightSized.s2),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: ColorManager.grey,
                ),
                SizedBox(
                  width: HeightSized.s1,
                ),
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
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: HeightSized.s2, vertical: HeightSized.s1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == index
                              ? ColorManager.primary
                              : ColorManager.black.withOpacity(0.05)),
                      child: DefaultText(
                        text: category[index],
                        color: currentIndex == index
                            ? ColorManager.white
                            : ColorManager.primary,
                        fontWeight: FontWeightManager.semiBold,
                        fontSize: FontSized.fs16,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: HeightSized.s2,
                    ),
                itemCount: category.length),
          ),
          SizedBox(
            height: HeightSized.s2,
          ),
          SizedBox(
            height: HeightSized.s10,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: HeightSized.s30 + HeightSized.s4,
                      padding: EdgeInsets.symmetric(
                          horizontal: HeightSized.s2, vertical: HeightSized.s1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorManager.primary),
                      child: Row(
                        children: [
                          Expanded(
                            child: DefaultText(
                                text: buyUsed[index].text,
                                color: ColorManager.white,
                                fontSize: FontSized.fs14,
                                fontWeight: FontWeightManager.medium),
                          ),
                          Image.asset(buyUsed[index].image)
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: HeightSized.s2,
                    ),
                itemCount: buyUsed.length),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: HeightSized.s2),
            child: DefaultText(
                text: Strings.popular,
                color: ColorManager.primary,
                fontSize: FontSized.fs18,
                fontWeight: FontWeightManager.bold),
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: HeightSized.s30,
                childAspectRatio: 0.62,
                crossAxisSpacing: HeightSized.s1,
                mainAxisSpacing: HeightSized.s2,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            homeModel[index].image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Positioned(
                            top: HeightSized.s2,
                            left: HeightSized.s2,
                            child: Image.asset(
                              Images.addCIcon,
                              width: HeightSized.s8,
                            )),
                        Positioned(
                            top: HeightSized.s2,
                            left: HeightSized.s15 + HeightSized.s1,
                            child: index == 1 || index == 2
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  )),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: HeightSized.s1, horizontal: HeightSized.s1),
                      height: HeightSized.s8,
                      decoration: BoxDecoration(
                        color: ColorManager.black.withOpacity(0.05),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              DefaultText(
                                  text: homeModel[index].title,
                                  color: ColorManager.primary,
                                  fontSize: FontSized.fs16,
                                  fontWeight: FontWeightManager.semiBold),
                              const Spacer(),
                              DefaultText(
                                  text: homeModel[index].price,
                                  color: ColorManager.primary,
                                  fontSize: FontSized.fs14,
                                  fontWeight: FontWeightManager.semiBold),
                              SizedBox(
                                width: HeightSized.sh8,
                              ),
                              Image.asset(Images.leav)
                            ],
                          ),
                          SizedBox(
                            height: HeightSized.sh8,
                          ),
                          DefaultText(
                              text: homeModel[index].description,
                              color: ColorManager.grey,
                              fontSize: FontSized.fs12,
                              maxLines: 1,
                              fontWeight: FontWeightManager.medium),
                        ],
                      ),
                    ),
                    Container(
                      height: HeightSized.s4 + HeightSized.sh5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: ColorManager.primary,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      child: Center(
                        child: DefaultText(
                          text: Strings.addToCart,
                          color: ColorManager.white,
                          fontSize: FontSized.fs14,
                          fontWeight: FontWeightManager.medium,
                        ),
                      ),
                    ),
                  ],
                );
              })
        ],
      ),
    );
  }
}
