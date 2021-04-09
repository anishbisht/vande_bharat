import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/utlis/values/strings.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';

class CustomerAddressPage extends StatefulWidget {
  @override
  _CustomerAddressPageState createState() => _CustomerAddressPageState();
}

class _CustomerAddressPageState extends State<CustomerAddressPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          actions: [
            Center(
              child: Text(
                Strings.addAddress,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.orange[700],
                    fontWeight: FontWeight.w500),
              ),
            ),
            Icon(
              Icons.add,
              color: Colors.orange[700],
              size: 35,
            )
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 2,
          title: Text(
            Strings.addAddress,
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                    color: Colors.orange[500],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      Strings.home,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Vikas Rohilla, ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "9811334454",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Text(
                      "1st Block, 1st Cross, Rammurthy Nagar,",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Bangalore-560016',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            height: 35,
                            width: 90,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.orange[700],
                              ),
                              child: Text(
                                Strings.edit,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 400,
                                      child: AlertDialog(
                                        title: Column(
                                          children: [
                                            Image.asset(
                                              AlertIcon,
                                              height: 100,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              Strings.confirmation,
                                              style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              Strings.deleteaddressconfirmaiton,
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.grey[600],
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        content: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 40,
                                              width: 80,
                                              child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.orange,
                                                    shape:
                                                        new RoundedRectangleBorder(
                                                            borderRadius:
                                                                new BorderRadius
                                                                        .circular(
                                                                    5)),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.grey)),
                                                onPressed: () {},
                                                child: Text(
                                                  Strings.yes,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 40,
                                              width: 80,
                                              child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.orange[600],
                                                    shape:
                                                        new RoundedRectangleBorder(
                                                            borderRadius:
                                                                new BorderRadius
                                                                        .circular(
                                                                    5)),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.grey)),
                                                onPressed: () {},
                                                child: Text(
                                                  Strings.no,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        backgroundColor: Colors.white,
                                      ),
                                    );
                                  });
                            },
                            child: Image.asset(
                              DeleteIcon,
                              height: 20,
                              width: 20,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 150,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                    color: Colors.grey[300],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      Strings.work,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Vikas , ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "9811334454",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Text(
                      "1st Block, 1st Cross, Rammurthy Nagar,",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Bangalore-560016',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            height: 35,
                            width: 90,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.orange[700],
                              ),
                              child: Text(
                                Strings.edit,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 400,
                                      child: AlertDialog(
                                        title: Column(
                                          children: [
                                            Image.asset(
                                              AlertIcon,
                                              height: 100,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              Strings.confirmation,
                                              style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              Strings.deleteaddressconfirmaiton,
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.grey[600],
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        content: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 40,
                                              width: 80,
                                              child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.orange,
                                                    shape:
                                                        new RoundedRectangleBorder(
                                                            borderRadius:
                                                                new BorderRadius
                                                                        .circular(
                                                                    5)),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.grey)),
                                                onPressed: () {},
                                                child: Text(
                                                  Strings.yes,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 40,
                                              width: 80,
                                              child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.orange[600],
                                                    shape:
                                                        new RoundedRectangleBorder(
                                                            borderRadius:
                                                                new BorderRadius
                                                                        .circular(
                                                                    5)),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.grey)),
                                                onPressed: () {},
                                                child: Text(
                                                  Strings.no,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        backgroundColor: Colors.white,
                                      ),
                                    );
                                  });
                            },
                            child: Image.asset(
                              DeleteIcon,
                              height: 20,
                              width: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
