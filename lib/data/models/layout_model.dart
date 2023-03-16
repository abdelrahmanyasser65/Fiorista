
import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/resources/strings.dart';
import 'package:fiorista/presentation/screens/add/add_screen.dart';
import 'package:fiorista/presentation/screens/community/community_screen.dart';
import 'package:fiorista/presentation/screens/home/home_screen.dart';
import 'package:fiorista/presentation/screens/profile/profile_screen.dart';
import 'package:fiorista/presentation/screens/scan/scan_screen.dart';

class LayoutModel{
 static List icons=[
    Images.homeIcon,
    Images.scanIcon,
    Images.addIcon,
    Images.communityIcon,
    Images.profileIcon,
  ];
 static List titleNav=[
    Strings.home,
    Strings.scan,
    Strings.add,
    Strings.community,
    Strings.profile,
  ];
 static List screens=[
    HomeScreen(),
    ScanScreen(),
    AddScreen(),
    CommunityScreen(),
    ProfileScreen()
  ];
}
