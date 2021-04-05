import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';

class ProductDetailsPage extends StatefulWidget {
  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            elevation: 2,
            title: Text(
              "Samsung Galaxy",
              style: TextStyle(fontSize: 20),
            ),
            backgroundColor: Colors.white,
            actions: [
              Image.asset(
                ShareImg,
                height: 20,
                width: 20,
              )
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Image.asset(
                            SamsungImg,
                            fit: BoxFit.fitHeight,
                            height: 300,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Image.asset(SamsungImg,
                              height: 600, fit: BoxFit.fill),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 300.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            Duration(milliseconds: 8548841225547852),
                        viewportFraction: 0.8,
                        pageSnapping: true,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Samsung Galaxy Note 10",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                        ),
                        Icon(Icons.favorite_outline)
                      ]),
                  Text(
                    "Lite Aura Black",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 12,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        size: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '\u{20B9}${69900}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 16),
                      ),
                      Text(
                        "Sold by: Mahadevan Electronics",
                        style: TextStyle(color: Colors.grey[700], fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Colors",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "To Deliver",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: Image.asset(
                            ProductColorImg1,
                            height: 20,
                            width: 15,
                          ),
                        ),
                        Text(
                          "Black",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: Image.asset(
                            ProductColorImg1,
                            height: 20,
                            width: 15,
                          ),
                        ),
                        Text(
                          "Red",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: Image.asset(
                            ProductColorImg1,
                            height: 20,
                            width: 15,
                          ),
                        ),
                        Text(
                          "Orange",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffix: Text(
                                "Change",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 12),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(1.0),
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  SizedBox(
                    height: 50,
                    child: AppBar(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      bottom: TabBar(
                        tabs: [
                          Tab(text: "Specifaction"),
                          Tab(
                            text: "Descripton",
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      child: TabBarView(children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Brand"),
                                Text("Samsung"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Model"),
                                Text("Galaxy Note 10 Lite"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Model Number"),
                                Text("SM-N770fZSMIMU"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Color"),
                                Text("Aura Glow,Black, Aquar Blue"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Hybrid Sim Slot"),
                                Text("Yes"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Display Size"),
                                Text("17.02 cm (6.7 inch)"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Operating System"),
                                Text("Android 10"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Processor "),
                                Text("Exynos 9810, Octa Core, 2.7 Ghz"),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Text("Brand"),
                                Text("Samsung"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Model"),
                                Text("Galaxy Note 10 Lite"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Model Number"),
                                Text("SM-N770fZSMIMU"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Color"),
                                Text("Aura Glow,Black, Aquar Blue"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Hybrid Sim Slot"),
                                Text("Yes"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Display Size"),
                                Text("17.02 cm (6.7 inch)"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Operating System"),
                                Text("Android 10"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Processor "),
                                Text("Exynos 9810, Octa Core, 2.7 Ghz"),
                              ],
                            ),
                          ],
                        )
                      ])),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: InkWell(
                      child: Text(
                        "See More",
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
