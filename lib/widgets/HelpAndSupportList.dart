import 'package:flutter/material.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/helpAndSupportModel.dart';
import 'package:moblie_ui/models/wishlistModel.dart';

class HelpAndSupportListWidget {
  static List<HelpAndSupport> helplist = <HelpAndSupport>[
    HelpAndSupport(
      imageName: HelpAndSupportIcon,
      textname1: 'Help and Support',
      textname2: 'Do check our FAQs sectoin once.',
      textname3: '1 may 20202, 1.01 PM',
      title_color: Colors.black87,
      sub_heading_color: Colors.grey[700],
    ),
    HelpAndSupport(
      imageName: EmailIcon,
      textname1: 'Email',
      textname2: 'customercare@vandebharatbazar.com',
      textname3:
          'You can email us at the above mentioned id. we will revert within 1 business day.',
      title_color: Colors.black87,
      sub_heading_color: Colors.orange,
    ),
    HelpAndSupport(
      imageName: PhoneIcon,
      textname1: 'India: +91-9876543210',
      textname2: '+91-9876543210',
      textname3: '1 may 20202, 1.01 PM',
      title_color: Colors.black,
      sub_heading_color: Colors.orange,
    ),
    HelpAndSupport(
      imageName: ReportProblem,
      textname1: 'Report a Problem',
      textname2: 'Click here',
      textname3: '1 may 20202, 1.01 PM',
      title_color: Colors.black87,
      sub_heading_color: Colors.orange,
    ),
  ];
}
