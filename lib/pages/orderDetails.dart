import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/reasonForCancellationPage.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomerOrderDetails extends StatefulWidget {
  @override
  _CustomerOrderDetailsState createState() => _CustomerOrderDetailsState();
}

class _CustomerOrderDetailsState extends State<CustomerOrderDetails> {
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text(''),
      content: Text(''),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text(''),
      content: Text(''),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text(''),
      content: Text('h'),
      state: StepState.complete,
      isActive: false,
    ),
    Step(
      title: Text(''),
      content: Text(''),
      state: StepState.complete,
      isActive: false,
    ),
  ];
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
              "Order Details",
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: Colors.white,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Theme(
                            data: ThemeData(
                                accentColor: Colors.green,
                                primarySwatch: Colors.green,
                                colorScheme:
                                    ColorScheme.light(primary: Colors.green)),
                            child: Stepper(
                              physics: ClampingScrollPhysics(),
                              type: StepperType.horizontal,
                              currentStep: this.current_step,
                              steps: steps,
                              onStepTapped: (step) {
                                setState(() {
                                  current_step = step;
                                });
                              },
                              onStepContinue: () {
                                setState(() {
                                  if (current_step < steps.length - 1) {
                                    current_step = current_step + 1;
                                  } else {
                                    current_step = 0;
                                  }
                                });
                              },
                              onStepCancel: () {
                                setState(() {
                                  if (current_step > 0) {
                                    current_step = current_step - 1;
                                  } else {
                                    current_step = 0;
                                  }
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Placed",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Packed",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Shipped",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Delivered",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Product',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      //shape: BoxShape.,
                      border: Border.all(
                        color: Colors.grey[300],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 80,
                            child: Image.asset(
                              SamsungImg,
                              height: 80,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(5),
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Samsung Galaxy Note 10",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.favorite_border_outlined,
                                    ),
                                  ],
                                ),
                                Text(
                                  "Lite (Aura Black...",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '\u{20B9} ' + "60,999",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      //shape: BoxShape.,
                      border: Border.all(
                        color: Colors.grey[300],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 80,
                            child: Image.asset(
                              BosesImg,
                              height: 80,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(5),
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Samsung Galaxy Note 10",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.favorite_border_outlined,
                                    ),
                                  ],
                                ),
                                Text(
                                  "Lite (Aura Black...",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '\u{20B9} ' + "60,999",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Shipping Details",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 140,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      //shape: BoxShape.,
                      border: Border.all(
                        color: Colors.grey[400],
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Order Date',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            Text("6 May, 2020",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Name',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Vikas Rohilla",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Mobile No.',
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 15),
                            ),
                            Text(
                              "9811334457",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Address',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[700]),
                            ),
                            Column(
                              children: [
                                Text(
                                  "1st Block, 1st Cross, Rammurthy",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Nagar, Bangalore-560016",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Payment Details",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 130,
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      //shape: BoxShape.,
                      border: Border.all(
                        color: Colors.grey[400],
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Sub Total',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            Text('\u{20B9} ' + "69,988",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Discount ( - )',
                              style: TextStyle(color: Colors.green),
                            ),
                            Text(
                              '\u{20B9} ' + "500",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Delivery Fee (+)',
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 15),
                            ),
                            Text(
                              '\u{20B9} ' + "300",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Order Total',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '\u{20B9} ' + "70,288",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 20,
                    child: CustomTextButtonWidget(
                      title: 'Cancel Order',
                      onPressed: () {
                        Get.to(() => ReasonForCancellation());
                      },
                      buttonColor: Colors.orange[700],
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
