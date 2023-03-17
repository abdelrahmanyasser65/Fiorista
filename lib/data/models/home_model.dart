

import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';

List category=[
  Strings.all,
  Strings.plant,
  Strings.tree,
  Strings.palm,
  Strings.seeds,
  Strings.tools
];
class BuyUsed{
  final String text;
  final String image;

  BuyUsed(this.text, this.image);

}
List buyUsed=[
  BuyUsed(Strings.usedTool, Images.usedTool),
  BuyUsed(Strings.crops, Images.crops),
];
class HomeModel{
  final String title;
  final String description;
  final String image;
  final String price;

  HomeModel(this.title, this.description, this.image, this.price);
}
List homeModel=[
  HomeModel(Strings.namePlant1, Strings.desPlant1,
      Images.plant1, Strings.price1),
  HomeModel(Strings.namePlant2, Strings.desPlant2,
      Images.plant2, Strings.price2),
  HomeModel(Strings.namePlant3, Strings.desPlant3,
      Images.plant3, Strings.price3),
  HomeModel(Strings.namePlant4, Strings.desPlant4,
      Images.plant4, Strings.price4),
];