import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task_interview/core/constant/colors.dart';

class ButtomTypes extends StatelessWidget {
  const ButtomTypes(
      {super.key,
      required this.color,
      this.onTap,
      required this.text,
      this.color2});
  final Color color;
  final dynamic onTap;
  final String text;
  final Color? color2;
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: H * 0.062,
        width: W * 0.91,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: MyColors.colorBorder, width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: W * 0.05),
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                    color: color2 ?? MyColors.colorgrey2,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
