import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/widgets/customOutlinedButtonWidget.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _controllerName = TextEditingController();
  final _controllerMoblie = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();

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
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Black',
                      color: HexColor('#000000'),
                      fontStyle: FontStyle.normal),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Enter your details to continue.",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: TextField(
                  controller: _controllerName,
                  onChanged: (val) {
                    val = _controllerName.text.toString();
                  },
                  obscureText: false,
                  cursorColor: Colors.orange[700],
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: HexColor('#F2F2F2'),
                    hintText: 'Name',
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Mobile Number",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: TextField(
                  controller: _controllerMoblie,
                  keyboardType: TextInputType.number,
                  onChanged: (val) {
                    val = _controllerMoblie.text.toString();
                  },
                  obscureText: false,
                  cursorColor: Colors.orange[700],
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: HexColor('#F2F2F2'),
                    hintText: 'Mobile Number',
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
                          background: Paint()
                            ..color = HexColor('#D1D7D7')
                            ..strokeWidth = 30
                            ..style = PaintingStyle.stroke,
                        ),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: TextField(
                  controller: _controllerEmail,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (val) {
                    val = _controllerEmail.text.toString();
                  },
                  obscureText: false,
                  cursorColor: Colors.orange[700],
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: HexColor('#F2F2F2'),
                    hintText: 'Email',
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
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Create Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: TextField(
                  controller: _controllerPassword,
                  onChanged: (val) {
                    val = _controllerPassword.text.toString();
                  },
                  obscureText: true,
                  cursorColor: Colors.orange[700],
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: HexColor('#F2F2F2'),
                    hintText: 'Password',
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
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: SizedBox(
                  width: 380,
                  height: 50,
                  child: CustomTextButtonWidget(
                    title: 'Sign Up',
                    buttonColor: HexColor('#EF7C1F'),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => LoginSucessPage(),
                      //   ),
                      // );
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
                height: 40,
              ),
              Center(
                child: Text(
                  '------------------------ or Sign Up with ------------------------',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 50,
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
                height: 50,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already a member?',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Sign In',
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
