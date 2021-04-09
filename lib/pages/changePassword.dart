import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

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
            "Change Password",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            autovalidateMode: AutovalidateMode.disabled,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Old Password",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Colors.orange[700],
                      decoration: InputDecoration(
                        filled: true,
                        focusColor: HexColor('#F2F2F2'),
                        hintText: ' Old Password',
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
                      validator: validatePassword,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'New Password',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      cursorColor: Colors.orange[700],
                      decoration: InputDecoration(
                        filled: true,
                        focusColor: HexColor('#F2F2F2'),
                        hintText: 'New Password',
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
                      validator: validatePassword,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'New Password Again',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextFormField(
                      controller: confirmpassword,
                      obscureText: true,
                      cursorColor: Colors.orange[700],
                      decoration: InputDecoration(
                        filled: true,
                        focusColor: HexColor('#F2F2F2'),
                        hintText: 'Confirm Password',
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
                      validator: validatePassword,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      height: 50,
                      child: CustomTextButtonWidget(
                        title: 'Save',
                        buttonColor: HexColor('#EF7C1F'),
                        onPressed: _sendToServer,
                        textStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
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

  String validatePasswordNew(String value) {
    if (value.isEmpty) {
      return "* New Password Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return null;
  }

  String validatePasswordConfirm(String value) {
    if (value.isEmpty) {
      return "* New Password Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else if (confirmpassword.text != password.text) {
      return "Password does not match";
    } else
      return null;
  }

  _sendToServer() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
      Get.back();
    } else {
      // validation error
      setState(() {
        AutovalidateMode.always;
      });
    }
  }
}
