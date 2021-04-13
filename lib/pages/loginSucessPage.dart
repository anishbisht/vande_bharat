import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/homePage.dart';
import 'package:moblie_ui/utlis/values/app_colors.dart';
import 'package:moblie_ui/utlis/values/strings.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:get/get.dart';

class LoginSucessPage extends StatefulWidget {
  @override
  _LoginSucessPageState createState() => _LoginSucessPageState();
}

class _LoginSucessPageState extends State<LoginSucessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Image.asset(
                appLogo,
                height: 130,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 60,
              ),
              Image.asset(
                sucessLogo,
                height: 120,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                Strings.success,
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"),
              ),
              Text(
                Strings.loginSuccessMessage,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.normal,
                    color: AppColors.kGreyTextColor),
              ),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width - 20,
                child: CustomTextButtonWidget(
                  title: Strings.getStarted,
                  onPressed: () {
                    Get.to(() => HomePage());
                  },
                  buttonColor: AppColors.kPrimaryColor,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
