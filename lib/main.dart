import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/pages/allCategoriesPage.dart';
import 'package:moblie_ui/pages/cartPage.dart';
import 'package:moblie_ui/pages/createNewPassword.dart';
import 'package:moblie_ui/pages/homePage.dart';
import 'package:moblie_ui/pages/loginSucessPage.dart';
import 'package:moblie_ui/pages/mobileCategory.dart';
import 'package:moblie_ui/pages/passwordOtpPage.dart';
import 'package:moblie_ui/pages/resetPasseordPage.dart';
import 'package:moblie_ui/pages/signInPage.dart';
import 'package:moblie_ui/pages/signInEmailNumberPage.dart';
import 'package:moblie_ui/pages/signUpPage.dart';
import 'package:moblie_ui/pages/splashScreePage.dart';
import 'package:moblie_ui/pages/wishListPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorLight: Colors.white,
        primaryColorBrightness: Brightness.light,
      ),
      home: CartPage(),
    );
  }
}
