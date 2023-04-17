import 'package:flutter/material.dart';
import 'package:task_interview/core/constant/colors.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({
    super.key,
    required this.H,
    required this.W,
    required this.text,
    this.ontap,
    required this.color,
    this.onupdate,
  });
  final String text;
  final double H;
  final double W;
  final dynamic ontap;
  final Color color;
  final dynamic onupdate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleUpdate: onupdate,
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15, left: 16, right: 16),
        child: Container(
          height: H * 0.063,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            // border: Border.all(color: MyColors.colorYellow, width: 1),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: W * 0.05),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    color: MyColors.backgroundColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
