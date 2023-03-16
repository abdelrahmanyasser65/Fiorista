import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:fiorista/data/models/layout_model.dart';
import 'package:fiorista/presentation/resources/colors.dart';
import 'package:fiorista/presentation/widget/layout/navBar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int currentIndex=2;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: LayoutModel.screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: ColorManager.primary,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: ColorManager.primary,
        items: [
          buildCurvedNavigationBarItem(
            text:LayoutModel.titleNav[0],
            image:LayoutModel.icons[0],
          ), buildCurvedNavigationBarItem(
            text:LayoutModel.titleNav[1],
            image:LayoutModel.icons[1],
          ), buildCurvedNavigationBarItem(
            text:LayoutModel.titleNav[2],
            image:LayoutModel.icons[2],
          ), buildCurvedNavigationBarItem(
            text:LayoutModel.titleNav[3],
            image:LayoutModel.icons[3],
          ), buildCurvedNavigationBarItem(
            text:LayoutModel.titleNav[4],
            image:LayoutModel.icons[4],
          ),
        ],
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
      ),
    );
  }


}
