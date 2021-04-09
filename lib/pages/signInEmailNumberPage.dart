import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/signInPage.dart';
import 'package:moblie_ui/pages/signUpPage.dart';
import 'package:moblie_ui/utlis/values/app_colors.dart';
import 'package:moblie_ui/utlis/values/strings.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/widgets/customOutlinedButtonWidget.dart';
import 'package:moblie_ui/utlis/validator.dart';

class SingInEmailPasswordPage extends StatefulWidget {
  @override
  _SingInEmailPasswordPageState createState() =>
      _SingInEmailPasswordPageState();
}

class _SingInEmailPasswordPageState extends State<SingInEmailPasswordPage> {
  // final _controllerEmailPhone = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool validate = false;
  // String email;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: new Form(
            key: _key,
            autovalidateMode: AutovalidateMode.disabled,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Image.asset(
                      appLogo,
                      height: 130,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    Strings.signIn,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    Strings.signInDetails,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    Strings.mobileOREmai,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 80,
                    child: TextFormField(
                      cursorColor: Colors.orange[700],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.orange[700],
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: HexColor('#F2F2F2'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange[700],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange[700],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: validateEmailOrNumber,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      height: 50,
                      child: CustomTextButtonWidget(
                        title: Strings.nextButton,
                        buttonColor: AppColors.kPrimaryColor,
                        onPressed: _sendToServer,
                        textStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Divider()),
                      Text(Strings.orSignInWith),
                      Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
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
                    height: 60,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                            text: Strings.notAMember,
                          ),
                          TextSpan(
                            text: Strings.signUp,
                            style: TextStyle(
                                color: HexColor('#EF7C1F'), fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => SignUp());
                                print(Strings.clickHere);
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

  String validateEmailOrNumber(String value) {
    String pat = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(pat);
    if (regExp.hasMatch(value)) {
      String patttern = r'(^[0-9]*$)';
      RegExp regExp = new RegExp(patttern);
      if (value.length == 0) {
        return "Mobile or Email is Required";
      } else if (value.length != 10) {
        return "Mobile number must 10 digits";
      }

      return null;
    } else {
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
  }

  _sendToServer() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
      Get.to(() => SignInPage());
    } else {
      // validation error
      setState(() {
        AutovalidateMode.always;
      });
    }
  }
}
