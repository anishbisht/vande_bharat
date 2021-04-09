import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/utlis/values/strings.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 5,
          title: Text(
            Strings.FAQs,
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
                Text(
                  Strings.commonlySearchedFaqs,
                  style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  Strings.retrunItem,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "To return/exchange your order, follow these simple steps:",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("1. Go to My orders", style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "2. Choose the item you wish to return or exchange",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "3. Fill in the details",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "4. Choose Request Retrun",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  Strings.accountChange,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  Strings.replacementProcess,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  Strings.invoicesforOrder,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  Strings.selectCategory,
                  style: TextStyle(color: Colors.grey[700], fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  Strings.helpNSupport,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 5,
                ),
                Text(
                  Strings.order,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 5,
                ),
                Text(
                  Strings.cancellationsNRetruns,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 5,
                ),
                Text(
                  Strings.payments,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
