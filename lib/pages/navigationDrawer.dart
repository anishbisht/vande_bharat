import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/helpAndSupportModel.dart';
import 'package:moblie_ui/models/mobileCatergoryModel.dart';
import 'package:moblie_ui/models/wishlistModel.dart';
import 'package:moblie_ui/pages/customerOrder.dart';
import 'package:moblie_ui/pages/help&Support.dart';
import 'package:moblie_ui/pages/homePage.dart';
import 'package:moblie_ui/pages/mobileCategory.dart';
import 'package:moblie_ui/pages/profilePage.dart';
import 'package:moblie_ui/pages/wishListPage.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        _createHeader(),
        _createDrawerItem(
          text: 'Home',
          onTap: () => Get.to(() => HomePage()),
        ),
        _createDrawerItem(
          text: 'Mobiles',
          onTap: () => Get.to(() => MobileCategory()),
          // onTap: () => Navigator.pushReplacementNamed(context, Routes.moblies),
        ),
        _createDrawerItem(
          text: 'Computers',
        ),
        _createDrawerItem(
          text: 'Electronic',
        ),
        _createDrawerItem(
          text: 'Mobile Accessories',
        ),
        _createDrawerItem(
          text: 'Computer Accessories',
        ),
        _createDrawerItem(
          text: 'Orders',
          onTap: () => Get.to(() => CustomerOrder()),
        ),
        _createDrawerItem(
          text: 'Wishtlist',
          onTap: () => Get.to(() => WishListPage()),
        ),
        _createDrawerItem(
          onTap: () => Get.to(() => HelpAndSupportPage()),
          text: 'Help & Support',
        ),
        _createDrawerItem(
          text: 'Logout',
        ),
      ]),
    );
  }

  Widget _createHeader() {
    return Container(
      height: 80,
      child: DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.orange,
        ),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
              height: 50,
              width: 50,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                //shape: BoxShape.,
                border: Border.all(
                  color: Colors.grey[300],
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  ProfileImage,
                  height: 30,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Vikas Rohilla',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '9811334454',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  void onTap() {}
}
