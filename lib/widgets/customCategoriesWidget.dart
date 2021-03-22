import 'package:flutter/material.dart';

class CustomCatergoriesWidget extends StatelessWidget {
  final double containerWidth;
  final double containerHeight;
  final String imageName;
  final double imageHeight;
  final String textName1;
  final String textName2;

  final double fontSize;
  final FontWeight fontWeight;

  CustomCatergoriesWidget(
      {this.containerHeight,
      this.containerWidth,
      this.imageHeight,
      this.imageName,
      this.textName1,
      this.textName2,
      this.fontSize,
      this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: containerWidth,
          height: containerHeight,
          child: Center(
            child: Image.asset(
              imageName,
              height: imageHeight,
            ),
          ),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey[300],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          textName1,
          style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
        ),
        Text(
          textName2,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        )
      ],
    );
  }
}
