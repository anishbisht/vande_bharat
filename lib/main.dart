import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/FASQuestion.dart';
import 'package:moblie_ui/pages/addAddressPage.dart';
import 'package:moblie_ui/pages/allCategoriesPage.dart';
import 'package:moblie_ui/pages/bottomNavbar.dart';
import 'package:moblie_ui/pages/cartPage.dart';
import 'package:moblie_ui/pages/changePassword.dart';
import 'package:moblie_ui/pages/createNewPassword.dart';
import 'package:moblie_ui/pages/customerAddress.dart';
import 'package:moblie_ui/pages/customerOrder.dart';
import 'package:moblie_ui/pages/editProfilePage.dart';
import 'package:moblie_ui/pages/filterPage.dart';
import 'package:moblie_ui/pages/help&Support.dart';
import 'package:moblie_ui/pages/homePage.dart';
import 'package:moblie_ui/pages/itemSearchedPage.dart';
import 'package:moblie_ui/pages/loginSucessPage.dart';
import 'package:moblie_ui/pages/mobileCategory.dart';
import 'package:moblie_ui/pages/notificatonsPage.dart';
import 'package:moblie_ui/pages/onBorardingPage.dart';
import 'package:moblie_ui/pages/orderDetails.dart';
import 'package:moblie_ui/pages/passwordOtpPage.dart';
import 'package:moblie_ui/pages/paymentPage.dart';
import 'package:moblie_ui/pages/paymentScuess.dart';
import 'package:moblie_ui/pages/productDetails.dart';
import 'package:moblie_ui/pages/profilePage.dart';
import 'package:moblie_ui/pages/rating&Review.dart';
import 'package:moblie_ui/pages/reasonForCancellationPage.dart';
import 'package:moblie_ui/pages/reportProblemPage.dart';
import 'package:moblie_ui/pages/resetPasseordPage.dart';
import 'package:moblie_ui/pages/reviewPostPage.dart';
import 'package:moblie_ui/pages/searchSuggestionPage.dart';
import 'package:moblie_ui/pages/shipToPage.dart';
import 'package:moblie_ui/pages/signInPage.dart';
import 'package:moblie_ui/pages/signInEmailNumberPage.dart';
import 'package:moblie_ui/pages/signUpPage.dart';
import 'package:moblie_ui/pages/splashScreePage.dart';
import 'package:moblie_ui/pages/wishListPage.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: false,
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColorLight: Colors.white,
          primaryColorBrightness: Brightness.light,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
