import 'package:flutter/material.dart';

class CustomHeadingRowWidget extends StatelessWidget {
  final String textname1;
  final String textname2;
  final double fontSize1;
  final double fontSize2;

  // ignore: non_constant_identifier_names
  final FontWeight fontWeight1;
  final FontWeight fontWeight2;

  final Color color1;
  final Color color2;

  CustomHeadingRowWidget({
    this.textname1,
    this.textname2,
    this.color1,
    this.color2,
    this.fontSize1,
    this.fontSize2,
    this.fontWeight1,
    this.fontWeight2,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          textname1,
          style: TextStyle(
            color: color1,
            fontSize: fontSize1,
            fontWeight: fontWeight1,
          ),
        ),
        Text(
          textname2,
          style: TextStyle(
            color: color2,
            fontSize: fontSize2,
            fontWeight: fontWeight2,
          ),
        ),
      ],
    );
  }
}
