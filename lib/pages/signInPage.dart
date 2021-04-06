import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/loginSucessPage.dart';
import 'package:moblie_ui/pages/signUpPage.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/widgets/customOutlinedButtonWidget.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      "Sign In",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      "Enter password to connect",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Colors.greenAccent,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.orange,
                        ),
                        suffix: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[700]),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[700]),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange[700]),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: validatePassword,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget Password",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      height: 60,
                      child: CustomTextButtonWidget(
                        title: 'Sign In',
                        buttonColor: Colors.orange[700],
                        onPressed: _sendToServer,
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Divider()),
                      Text('or Sign in with'),
                      Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    height: 30,
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
        ),
      ),
    );
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
      Get.to(() => LoginSucessPage());
    } else {
      // validation error
      setState(() {
        AutovalidateMode.always;
      });
    }
  }
}
