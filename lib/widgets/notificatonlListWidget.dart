import 'package:flutter/material.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/notificationModel.dart';

class NotificationListWidget {
  static List<NotificationModel> notificatonlist = <NotificationModel>[
    NotificationModel(
      imageName: Notification_Icon,
      textname1: 'The Best Title',
      textname2:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras gravida elit odio, ut porttitor magna bibendum faucibus. Aliquam ulla',
      textname3: '1 may 20202, 1.01 PM',
      title_color: Colors.black87,
      sub_heading_color: Colors.grey[700],
    ),
    NotificationModel(
      imageName: Notification_Icon,
      textname1: 'SUMMER OFFER 98% Cashback',
      textname2:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras gravida elit odio, ut porttitor magna bibendum faucibus. Aliquam ulla',
      textname3: '1May 2020,1.01',
      title_color: Colors.black87,
      sub_heading_color: Colors.grey[700],
    ),
    NotificationModel(
      imageName: Notification_Icon,
      textname1: 'Special Offer 25% OFF',
      textname2:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras gravida elit odio, ut porttitor magna bibendum faucibus. Aliquam ulla',
      textname3: '1May 2020,1.01',
      title_color: Colors.black87,
      sub_heading_color: Colors.grey[700],
    ),
  ];
}
