import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/utlis/values/strings.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/widgets/customProductWidget.dart';

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
                        Strings.colors,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        Strings.toDeliver,
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
                                Strings.change,
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
                          Tab(text: Strings.specifications),
                          Tab(
                            text: Strings.descripition,
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
                        )
                      ])),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: InkWell(
                      child: Text(
                        Strings.seeMore,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  Text(
                    Strings.reviewsByCertifiedCustomer,
                    style: TextStyle(fontSize: 16, color: Colors.orange),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                SamsungImg,
                                height: 40,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Customer Name",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "09 May 2020",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            RatingBar.builder(
                              itemSize: 15,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Text(
                              "Awesome",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Text(
                            "Product is nice and i use it for 1 week did not find any cons but packaging is not good",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                SamsungImg,
                                height: 40,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Customer Name",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "09 May 2020",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            RatingBar.builder(
                              itemSize: 15,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Text(
                              "Awesome",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Text(
                            "Product is nice and i use it for 1 week did not find any cons but packaging is not good",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "You might also like",
                    style: TextStyle(fontSize: 16, color: Colors.orange),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: SamsungImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Samsung Galaxy',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: 'Watch Active 2..',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'Sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${27499}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: MobileImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Redmi Note 9 Pro',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '(Interstellar Black...)',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: '',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${14499}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: MobileImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Redmi Note 9 Pro',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '(Interstellar Black...)',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: '',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${14499}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 20,
                    height: 50,
                    child: CustomTextButtonWidget(
                      title: 'Add to Cart',
                      buttonColor: HexColor('#EF7C1F'),
                      onPressed: () {},
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
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
}
