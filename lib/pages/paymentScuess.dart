import 'package:flutter/material.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';

class PaymentSucessPage extends StatefulWidget {
  @override
  _PaymentSucessPageState createState() => _PaymentSucessPageState();
}

class _PaymentSucessPageState extends State<PaymentSucessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Image.asset(
              sucessLogo,
              height: 100,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Success",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Thank yor for choosing Vande Bharat",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 50,
              width: 380,
              child: CustomTextButtonWidget(
                title: 'Back to Home',
                onPressed: () {},
                buttonColor: Colors.orange[700],
                textStyle: TextStyle(
                  fontSize: 18,
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
