import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task_interview/core/constant/assets_data.dart';
import 'package:task_interview/core/constant/colors.dart';
import 'package:task_interview/core/helper/router.dart';
import 'package:task_interview/modules/Vistor%20Flow/view/screens/home_Screen/homescreen.dart';
import 'package:task_interview/view/widgets/customButtom.dart';
import 'package:task_interview/view/widgets/typesBurrom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var _isOwner = false;

  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(MyAssetsData.appLogo)),
          SizedBox(height: H * 0.008),
          const Text('Select your account type',
              style: TextStyle(
                  color: MyColors.colorgrey2,
                  fontWeight: FontWeight.w400,
                  fontSize: 16)),
          SizedBox(height: H * 0.08),
          ButtomTypes(
            color: _isOwner
                ? const Color.fromRGBO(68, 70, 95, 1)
                : MyColors.backgroundColor,
            color2: _isOwner ? MyColors.colorYellow : MyColors.colorgrey2,
            text: 'Visitor',
            onTap: () {
              setState(() {
                _isOwner = !_isOwner;
              });
            },
          ),
          SizedBox(height: H * 0.02),
          ButtomTypes(
            color: MyColors.backgroundColor,
            text: 'Owner',
            onTap: () {
              setState(() {
                // _isOwner = !_isOwner;
              });
            },
          ),
        ],
      ),
      bottomNavigationBar: CustomButtom(
        H: H,
        W: W,
        text: 'submit',
        color: _isOwner
            ? MyColors.colorYellow
            : MyColors.colorYellow.withOpacity(0.37),
        ontap: () {
          if (_isOwner) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          } else {
            Navigator.pushNamed(context, '/visitor');
          }
        },
      ),
    );
  }
}
