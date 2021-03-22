import 'package:flutter/material.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/allCategoriesModel.dart';

class AllCategoriesListWidget {
  static List<AllCategoriesModel> categoriesList = <AllCategoriesModel>[
    AllCategoriesModel(
      containerHeight: 150,
      containerWidth: 150,
      imageName: MoblieIcon,
      imageHeight: 50,
      textName1: 'Mobiles',
      textName2: '',
      fontSize: 18,
      fontWeight: FontWeight.w300,
    ),
    AllCategoriesModel(
      containerHeight: 150,
      containerWidth: 150,
      imageName: ComputerIcon,
      imageHeight: 50,
      textName1: 'Computers',
      textName2: '',
      fontSize: 18,
      fontWeight: FontWeight.w300,
    ),
    AllCategoriesModel(
      containerHeight: 150,
      containerWidth: 150,
      imageName: ElectronicLogo,
      imageHeight: 50,
      textName1: 'Electronics',
      textName2: '',
      fontSize: 18,
      fontWeight: FontWeight.w300,
    ),
    AllCategoriesModel(
      containerHeight: 150,
      containerWidth: 150,
      imageName: HeadsetIcon,
      imageHeight: 50,
      textName1: 'Mobiles',
      textName2: 'Accessories',
      fontSize: 18,
      fontWeight: FontWeight.w300,
    ),
    AllCategoriesModel(
      containerHeight: 150,
      containerWidth: 150,
      imageName: MouseLogo,
      imageHeight: 50,
      textName1: 'Computer',
      textName2: 'Accessories',
      fontSize: 18,
      fontWeight: FontWeight.w300,
    ),
  ];
}
