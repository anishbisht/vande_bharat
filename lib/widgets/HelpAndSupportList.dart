import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/helpAndSupportModel.dart';
import 'package:moblie_ui/models/wishlistModel.dart';
import 'package:moblie_ui/pages/FASQuestion.dart';
import 'package:moblie_ui/pages/reportProblemPage.dart';
import 'package:moblie_ui/utlis/values/app_colors.dart';

class HelpAndSupportListWidget {
  static List<HelpAndSupport> helplist = <HelpAndSupport>[
    HelpAndSupport(
      imageName: HelpAndSupportIcon,
      textname1: 'Help and Support',
      textname2: 'Do check our FAQs sectoin once.',
      tap: () {
        Get.to(() => FAQ());
      },
      textname3: '',
      title_color: Colors.black87,
      sub_heading_color: AppColors.kPrimaryColor,
    ),
    HelpAndSupport(
      imageName: EmailIcon,
      textname1: 'Email',
      textname2: 'customercare@vandebharatbazar.com',
      tap: () {},
      textname3:
          'You can email us at the above mentioned id. we will revert within 1 business day.',
      title_color: Colors.black87,
      sub_heading_color: AppColors.kPrimaryColor,
    ),
    HelpAndSupport(
      imageName: PhoneIcon,
      textname1: 'Phone',
      textname2: '+91-9876543210',
      tap: () {},
      textname3: '',
      title_color: Colors.black,
      sub_heading_color: AppColors.kPrimaryColor,
    ),
    HelpAndSupport(
      imageName: ReportProblem,
      textname1: 'Report a Problem',
      textname2: 'Click here',
      tap: () {
        Get.to(() => ReportProblemPage());
      },
      textname3: '',
      title_color: Colors.black87,
      sub_heading_color: AppColors.kPrimaryColor,
    ),
  ];
}
