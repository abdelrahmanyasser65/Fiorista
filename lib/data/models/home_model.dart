

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