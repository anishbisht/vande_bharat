import 'package:flutter/material.dart';

class CustomProductWidget extends StatelessWidget {
  final EdgeInsetsGeometry containerMargin;
  final EdgeInsetsGeometry containerPadding;
  final double containerHeight;
  final double containerWidth;
  final String imageName;
  final double imageHeight;
  final BoxFit fit;
  final String textName1;
  final FontWeight fontWeight1;
  final double fontSize1;
  final String textName2;
  final FontWeight fontWeight2;
  final double fontSize2;
  final String textName3;
  final FontWeight fontWeight3;
  final double fontSize3;
  final String textName4;
  final FontWeight fontWeight4;
  final double fontSize4;
  final Color color4;
  final String textName5;
  final FontWeight fontWeight5;
  final double fontSize5;

  var ontap;

  CustomProductWidget({
    this.containerMargin,
    this.containerPadding,
    this.containerHeight,
    this.containerWidth,
    this.fit,
    this.imageHeight,
    this.imageName,
    this.textName1,
    this.fontWeight1,
    this.fontSize1,
    this.textName2,
    this.fontSize2,
    this.fontWeight2,
    this.textName3,
    this.fontSize3,
    this.fontWeight3,
    this.textName4,
    this.fontSize4,
    this.fontWeight4,
    this.color4,
    this.textName5,
    this.fontSize5,
    this.fontWeight5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: containerMargin,
      padding: containerPadding,
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              imageName,
              height: imageHeight,
              fit: fit,
            ),
          ),
          Text(
            textName1,
            style: TextStyle(fontWeight: fontWeight1, fontSize: fontSize1),
          ),
          Text(
            textName2,
            style: TextStyle(fontWeight: fontWeight2, fontSize: fontSize2),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            textName3,
            style: TextStyle(fontSize: fontSize3, fontWeight: fontWeight3),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                textName4,
                style: TextStyle(
                  fontSize: fontSize4,
                  fontWeight: fontWeight4,
                  color: color4,
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 10.0,
                  ),
                  Text(textName5),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
