import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moblie_ui/pages/allCategoriesPage.dart';
import 'package:moblie_ui/pages/cartPage.dart';
import 'package:moblie_ui/pages/createNewPassword.dart';
import 'package:moblie_ui/pages/customerAddress.dart';
import 'package:moblie_ui/pages/customerOrder.dart';
import 'package:moblie_ui/pages/editProfilePage.dart';
import 'package:moblie_ui/pages/help&Support.dart';
import 'package:moblie_ui/pages/homePage.dart';
import 'package:moblie_ui/pages/loginSucessPage.dart';
import 'package:moblie_ui/pages/mobileCategory.dart';
import 'package:moblie_ui/pages/notificatonsPage.dart';
import 'package:moblie_ui/pages/onBorardingPage.dart';
import 'package:moblie_ui/pages/orderDetails.dart';
import 'package:moblie_ui/pages/passwordOtpPage.dart';
import 'package:moblie_ui/pages/paymentPage.dart';
import 'package:moblie_ui/pages/paymentScuess.dart';
import 'package:moblie_ui/pages/profilePage.dart';
import 'package:moblie_ui/pages/rating&Review.dart';
import 'package:moblie_ui/pages/resetPasseordPage.dart';
import 'package:moblie_ui/pages/reviewPostPage.dart';
import 'package:moblie_ui/pages/shipToPage.dart';
import 'package:moblie_ui/pages/signInPage.dart';
import 'package:moblie_ui/pages/signInEmailNumberPage.dart';
import 'package:moblie_ui/pages/signUpPage.dart';
import 'package:moblie_ui/pages/splashScreePage.dart';
import 'package:moblie_ui/pages/wishListPage.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorLight: Colors.white,
        primaryColorBrightness: Brightness.light,
      ),
      home: HelpAndSupportPage(),
    );
  }
}
