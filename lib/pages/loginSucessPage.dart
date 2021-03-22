import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';

class LoginSucessPage extends StatefulWidget {
  @override
  _LoginSucessPageState createState() => _LoginSucessPageState();
}

class _LoginSucessPageState extends State<LoginSucessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Image.asset(
              appLogo,
              height: 130,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 80,
            ),
            Image.asset(
              sucessLogo,
              height: 130,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Sucess",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              "Thank yor for choosing Vande Bharat",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 50,
              width: 380,
              child: CustomTextButtonWidget(
                title: 'Get Started ->',
                onPressed: () {},
                buttonColor: Colors.orange[700],
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
