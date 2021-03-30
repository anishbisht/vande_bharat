import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/loginSucessPage.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/widgets/customOutlinedButtonWidget.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Enter password to connect",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                  obscureText: true,
                  cursorColor: Colors.greenAccent,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.orange,
                    ),
                    suffix: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(280, 0, 0, 0),
                child: Text(
                  "Forget Password",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  width: 390,
                  height: 60,
                  child: CustomTextButtonWidget(
                    title: 'Sign In',
                    buttonColor: Colors.orange[700],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginSucessPage(),
                        ),
                      );
                    },
                    textStyle: TextStyle(
                      fontSize: 20,
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
                height: 30,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Not a member?',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Sign up',
                        style: TextStyle(
                            color: Colors.deepOrangeAccent, fontSize: 18),
                      )
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
