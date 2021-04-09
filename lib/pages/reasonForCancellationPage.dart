import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moblie_ui/pages/customerOrder.dart';
import 'package:moblie_ui/utlis/values/strings.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/widgets/customOutlinedButtonWidget.dart';

class ReasonForCancellation extends StatefulWidget {
  @override
  _ReasonForCancellationState createState() => _ReasonForCancellationState();
}

class _ReasonForCancellationState extends State<ReasonForCancellation> {
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
          elevation: 1,
          title: Text(
            Strings.reasonForCancellation,
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 20,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1.0,
                      style: BorderStyle.solid,
                      color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: new DropdownButton<String>(
                  underline: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  isExpanded: true,
                  hint: Text(
                    "I have changed my mind",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  items: <String>[
                    'I have changed my mind',
                    'Product is damaged',
                    'Size issue',
                    'Product is not that was shown'
                  ].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: CustomTextButtonWidget(
                title: Strings.submit,
                buttonColor: HexColor('#EF7C1F'),
                onPressed: () {
                  Get.to(() => CustomerOrder());
                },
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}
