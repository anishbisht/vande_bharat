import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/passwordOtpPage.dart';
import 'package:moblie_ui/pages/signInEmailNumberPage.dart';
import 'package:moblie_ui/utlis/values/app_colors.dart';
import 'package:moblie_ui/utlis/values/strings.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/widgets/customOutlinedButtonWidget.dart';
import 'package:hexcolor/hexcolor.dart';

import 'signInPage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool validate = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _key,
            autovalidateMode: AutovalidateMode.disabled,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    Strings.signUp,
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins-Black',
                        color: HexColor('#000000'),
                        fontStyle: FontStyle.normal),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    Strings.signUpDetails,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kGreyTextColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    Strings.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: false,
                    cursorColor: Colors.orange[700],
                    decoration: InputDecoration(
                      filled: true,
                      focusColor: HexColor('#F2F2F2'),
                      hintText: Strings.name,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange[700],
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.orange[700],
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                    validator: validateName,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    Strings.mobileNumber,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.orange[700],
                    decoration: InputDecoration(
                      filled: true,
                      focusColor: HexColor('#F2F2F2'),
                      hintText: Strings.mobileNumber,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.orange[700],
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          '+91 ',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: validateMobile,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    Strings.email,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      cursorColor: Colors.orange[700],
                      decoration: InputDecoration(
                        filled: true,
                        focusColor: HexColor('#F2F2F2'),
                        hintText: Strings.email,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.orange[700],
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.mobile_friendly_outlined,
                          color: Colors.orange[700],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: validateEmail),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    Strings.createPassword,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.orange[700],
                    decoration: InputDecoration(
                      filled: true,
                      focusColor: HexColor('#F2F2F2'),
                      hintText: Strings.password,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.orange[700],
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.orange[700],
                      ),
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: validatePassword,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      height: 50,
                      child: CustomTextButtonWidget(
                        title: Strings.signUp,
                        buttonColor: HexColor('#EF7C1F'),
                        onPressed: _sendToServer,
                        textStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: AppColors.kGreyTextColor,
                      )),
                      Text(
                        Strings.orSignUpWith,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: AppColors.kGreyTextColor,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(
                        child: Divider(
                          color: AppColors.kGreyTextColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 1 / 2 - 30,
                        height: 60.0,
                        child: CustomOutlinedButttonWidget(
                          onPressed: () {},
                          title: 'Google',
                          textSize: 18,
                          textColor: Colors.black54,
                          imageHeight: 20,
                          imageName: Gogglelogo,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 1 / 2 - 20,
                        height: 60.0,
                        child: CustomOutlinedButttonWidget(
                          onPressed: () {},
                          title: 'Facebook',
                          textSize: 16,
                          textColor: Colors.black54,
                          imageName: Fblogo,
                          imageHeight: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: AppColors.kGreyTextColor,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                            text: Strings.alreadyAMember,
                          ),
                          TextSpan(
                            text: Strings.signIN,
                            style: TextStyle(
                                color: AppColors.kPrimaryColor,
                                fontFamily: "Poppins",
                                fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => SingInEmailPasswordPage());
                                print("Click");
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  String validateMobile(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Mobile is Required";
    } else if (value.length != 10) {
      return "Mobile number must 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Mobile Number must be digits";
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.isEmpty) {
      return "* Password Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return null;
  }

  _sendToServer() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
      Get.to(() => PasswordOtpPage());
    } else {
      // validation error
      setState(() {
        AutovalidateMode.always;
      });
    }
  }
}
