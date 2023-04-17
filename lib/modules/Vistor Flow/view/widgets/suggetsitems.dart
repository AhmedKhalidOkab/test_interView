import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({
    super.key,
    required this.text,
    required this.width,
  });
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    var W = MediaQuery.of(context).size.width;
    var H = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: W * 0.02),
      height: H * 0.039,
      width: width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(217, 217, 217, 1).withOpacity(.4),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Color.fromRGBO(175, 175, 175, 1).withOpacity(.4),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Color.fromRGBO(74, 74, 74, 1),
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
