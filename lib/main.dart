import 'package:flutter/material.dart';
import 'package:task_interview/core/constant/colors.dart';
import 'package:task_interview/view/screens/SplashScreen.dart';

import 'modules/Vistor Flow/view/screens/home_Screen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: MaterialColor(0xFF1E1E1E, MyColors.color),
          // ignore: lines_longer_than_80_chars
          primaryColor: MyColors.backgroundColor),
      home: const SplashScreen(),
    );
  }
}
