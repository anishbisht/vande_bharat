import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';
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
            "Enter OTP",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                height: 50,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Text(
                    "Enter OTP sent to 9376543210. Wrong Mobile number Click Here",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "OTP",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: OTPTextField(
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
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 55,
                  child: CustomTextButtonWidget(
                    title: 'Next',
                    buttonColor: Colors.orange[700],
                    // onPressed: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => LoginSucessPage(),
                    //     ),
                    //   );
                    // },
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Resend OTP:" + " 8 sec",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
