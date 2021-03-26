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
            "Samsung Galaxy",
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.white,
          actions: [
            Icon(Icons.share),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
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
                      aspectRatio: 16 / 16,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
