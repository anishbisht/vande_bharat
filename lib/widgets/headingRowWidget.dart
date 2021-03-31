import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/pages/allCategoriesPage.dart';

class CustomHeadingRowWidget extends StatelessWidget {
  final String textname1;
  final String textname2;
  final double fontSize1;
  final double fontSize2;
  final VoidCallback onPressed;
  // ignore: non_constant_identifier_names
  final FontWeight fontWeight1;
  final FontWeight fontWeight2;

  final Color color1;
  final Color color2;
  // void onpressed1;
  // void onpressed2;

  CustomHeadingRowWidget({
    this.textname1,
    this.textname2,
    this.color1,
    this.color2,
    this.fontSize1,
    this.fontSize2,
    this.fontWeight1,
    this.fontWeight2,
    this.onPressed, Null Function() ontap,
    // this.onpressed1,
    // this.onpressed2,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          onTap: onPressed,
          child: Text(
            textname1,
            style: TextStyle(
              color: color1,
              fontSize: fontSize1,
              fontWeight: fontWeight1,
            ),
          ),
        ),
        InkWell(
          onTap: onPressed,
          child: Text(
            textname2,
            style: TextStyle(
              color: color2,
              fontSize: fontSize2,
              fontWeight: fontWeight2,
            ),
          ),
        ),
      ],
    );
  }
}
