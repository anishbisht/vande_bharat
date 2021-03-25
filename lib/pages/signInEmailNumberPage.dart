import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/signInPage.dart';
import 'package:moblie_ui/pages/signUpPage.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/widgets/customOutlinedButtonWidget.dart';

class SingInEmailPasswordPage extends StatefulWidget {
  @override
  _SingInEmailPasswordPageState createState() =>
      _SingInEmailPasswordPageState();
}

class _SingInEmailPasswordPageState extends State<SingInEmailPasswordPage> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Enter your details to continue",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Moblie Number / Email ID",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: TextField(
                  controller: _controller,
                  onChanged: (val) {
                    val = _controller.text.toString();
                  },
                  cursorColor: Colors.orange[700],
                  decoration: InputDecoration(
                    focusColor: Colors.white,
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
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: SizedBox(
                  width: 380,
                  height: 50,
                  child: CustomTextButtonWidget(
                    title: 'Next',
                    buttonColor: Colors.orange[700],
                    onPressed: () {
                      Get.to(SignInPage());
                    },
                    textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  // child: TextButton(
                  //   style: TextButton.styleFrom(
                  //     primary: Colors.white,
                  //     backgroundColor: Colors.deepOrangeAccent,
                  //     onSurface: Colors.grey,
                  //   ),
                  //   onPressed: () {},
                  //   child: Text(
                  //     'Sign In',
                  //     style: TextStyle(fontSize: 20),
                  //   ),
                  // ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  '------------------------ or Sign In with ------------------------',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    width: 180.0,
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
                    width: 180.0,
                    height: 60.0,
                    child: CustomOutlinedButttonWidget(
                      onPressed: () {},
                      title: 'Facebook',
                      textSize: 16,
                      textColor: Colors.black54,
                      imageName: Fblogo,
                      imageHeight: 20,
                    ),
                    // child: OutlinedButton(
                    //   child: Text('Facebook',
                    //       style: TextStyle(color: Colors.green)),
                    //   onPressed: () {},
                    // ),
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
                        text: 'Not a memeber?',
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                            color: Colors.deepOrangeAccent, fontSize: 18),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => SignUp());
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
    );
  }
}
