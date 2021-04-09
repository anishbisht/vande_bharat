import 'package:flutter/material.dart';

class HelpAndSupport {
  final String imageName;
  final String textname1;
  final String textname2;
  final String textname3;
  final Color title_color;
  final Color sub_heading_color;
  final void onpressed;

  HelpAndSupport( {
    this.title_color,
    this.sub_heading_color,
    this.imageName,
    this.textname1,
    this.textname2,
    this.textname3,
    this.onpressed,
  });
}
