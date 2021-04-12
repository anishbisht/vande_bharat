import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/loginSucessPage.dart';
import 'package:moblie_ui/utlis/values/app_colors.dart';
import 'package:moblie_ui/utlis/values/strings.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class PasswordOtpPage extends StatefulWidget {
  @override
  _PasswordOtpPageState createState() => _PasswordOtpPageState();
}

class _PasswordOtpPageState extends State<PasswordOtpPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 2,
          title: Text(
            Strings.enterOTP,
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    appLogo,
                    height: 130,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    Strings.enterOTPMessage,
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: AppColors.Black),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    Strings.oTP,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                OTPTextField(
                  keyboardType: TextInputType.number,
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 50,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 20,
                    height: 55,
                    child: CustomTextButtonWidget(
                      title: Strings.next,
                      buttonColor: AppColors.kPrimaryColor,
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Get.to(() => LoginSucessPage());
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Resend OTP:" + " 8 sec",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kGreyTextColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
