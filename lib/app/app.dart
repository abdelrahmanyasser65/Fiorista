import 'package:fiorista/presentation/resources/images.dart';
import 'package:fiorista/presentation/screens/auth/auth_screen.dart';
import 'package:fiorista/presentation/screens/intro/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,s,d){
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              //useMaterial3: true,
                //fontFamily: "Cairo"
            ),
            home:AuthScreen(),
        );
      },
    );
  }
}