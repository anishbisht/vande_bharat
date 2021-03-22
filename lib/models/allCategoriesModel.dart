import 'package:flutter/material.dart';

class AllCategoriesModel {
  final double containerWidth;
  final double containerHeight;
  final String imageName;
  final double imageHeight;
  final String textName1;
  final String textName2;

  final double fontSize;
  final FontWeight fontWeight;

  AllCategoriesModel(
      {this.containerHeight,
      this.containerWidth,
      this.imageHeight,
      this.imageName,
      this.textName1,
      this.textName2,
      this.fontSize,
      this.fontWeight});
}
