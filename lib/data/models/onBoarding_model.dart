import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';

class BoardingModel {
  String title, description, image;

  BoardingModel(
      {required this.title, required this.description, required this.image});
}

List<BoardingModel> boardingList = [
  BoardingModel(
      title: Strings.onboardingT1,
      description: Strings.onboardingD1,
      image: Images.onBoarding1),
  BoardingModel(
      title: Strings.onboardingT2,
      description: Strings.onboardingD2,
      image: Images.onBoarding2),
  BoardingModel(
      title: Strings.onboardingT3,
      description: Strings.onboardingD3,
      image: Images.onBoarding3),
  BoardingModel(
      title: Strings.onboardingT4,
      description: Strings.onboardingD4,
      image: Images.onBoarding4),
  BoardingModel(
      title: Strings.onboardingT5,
      description: Strings.onboardingD5,
      image: Images.onBoarding5),
];
