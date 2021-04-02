import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues _currentRangeValues = const RangeValues(0, 50000);
  var min, max;
  final _controllerMin = TextEditingController();
  final _controllerMax = TextEditingController();

  static String _valueToString(double value) {
    return value.toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 2,
          title: Text(
            "Filter By",
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
              child: Text(
                "Clear All",
                style: TextStyle(fontSize: 18, color: Colors.greenAccent[400]),
              ),
            ),
          ],
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
                  "Brand",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "Redmi",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "One Plus",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "Samsung",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "Apple",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "Vivo",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "Asus",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Price",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 1 / 2 - 30,
                        child: TextFormField(
                          controller: _controllerMin,
                          onChanged: (val) {
                            val = _controllerMin.text.toString();
                          },
                          cursorColor: Colors.orange,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 1 / 2 - 30,
                        child: TextFormField(
                          controller: _controllerMax,
                          onChanged: (val) {
                            val = _controllerMax.text.toString();
                          },
                          cursorColor: Colors.orange,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                RangeSlider(
                  activeColor: Colors.green,
                  values: _currentRangeValues,
                  min: 0,
                  max: 50000,
                  divisions: 1000,
                  labels: RangeLabels(
                    min = _currentRangeValues.start.round().toString(),
                    max = _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text("Min"), Text("Max")],
                ),
                SizedBox(height: 30),
                Text(
                  "Payment",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 150, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "Pay on Delivery",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 150, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "Online Payment",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Color",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              BlackImg,
                              height: 12,
                              width: 12,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Black",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Row(children: <Widget>[
                          Image.asset(
                            WhiteImg,
                            height: 12,
                            width: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "White",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              SilverImg,
                              height: 12,
                              width: 12,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Sliver",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Row(children: <Widget>[
                          Image.asset(
                            RedImg,
                            height: 12,
                            width: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Red",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              GoldImg,
                              height: 12,
                              width: 12,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Gold",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              RoseImg,
                              height: 12,
                              width: 12,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Rose Gold",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Availability",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 150, minHeight: 50),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5)),
                        side: BorderSide(width: 1, color: Colors.grey)),
                    onPressed: () {},
                    child: Text(
                      "Include Out of Stock",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "New Arrivals",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "30 Days",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "90 Days",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Star Rating",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "4 & Up",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "3 & Up",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5)),
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {},
                        child: Text(
                          "2 & Up",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 10,
                  child: CustomTextButtonWidget(
                    title: "Apply",
                    onPressed: () {},
                    textColor: Colors.white,
                    buttonColor: Colors.orange[800],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
