import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/pages/cartPage.dart';
import 'package:moblie_ui/pages/customerOrder.dart';
import 'package:moblie_ui/pages/homePage.dart';
import 'package:moblie_ui/pages/profilePage.dart';

import '../image_path.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      currentIndex: index,
      onTap: (int index) {
        setState(() {
          this.index = index;
        });
        _navigateToScreens(index);
      },
      type: BottomNavigationBarType.fixed,
      items: [
        new BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: index == 0
              ? new Image.asset(
                  Bottom_nav_bar_home1,
                  height: 25,
                )
              : new Image.asset(
                  Bottom_nav_bar_home,
                  height: 25,
                ),
          label: '',
        ),
        new BottomNavigationBarItem(
          icon: index == 1
              ? new Image.asset(
                  Bottom_nav_bar_cart1,
                  height: 25,
                )
              : new Image.asset(
                  Bottom_nav_bar_cart,
                  height: 25,
                ),
          label: '',
        ),
        new BottomNavigationBarItem(
          icon: index == 2
              ? new Image.asset(
                  Bottom_nav_bar_order1,
                  height: 25,
                )
              : new Image.asset(
                  Bottom_nav_bar_order,
                  height: 25,
                ),
          label: '',
        ),
        new BottomNavigationBarItem(
          icon: index == 3
              ? new Image.asset(
                  Bottom_nav_bar_account1,
                  height: 25,
                )
              : new Image.asset(
                  Bottom_nav_bar_account,
                  height: 25,
                ),
          label: '',
        ),
      ],
    );
  }

  _navigateToScreens(index) {
    if (index == 0) {
      Get.to(() => HomePage());
    } else if (index == 1) {
      Get.to(() => CartPage());
    } else if (index == 2) {
      Get.to(() => CustomerOrder());
    } else {
      Get.to(() => ProfilePage());
    }
  }
}
