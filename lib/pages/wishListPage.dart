import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';

class WishListPage extends StatefulWidget {
  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
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
            "My Wishlist",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 80,
                  height: 80,
                  child: Image.asset(SamsungImg, height: 50, fit: BoxFit.fill),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: ListTile(
                  leading: Icon(Icons.add),
                  title: Text(
                    'GFG title',
                    textScaleFactor: 1.5,
                  ),
                  trailing: Icon(Icons.done),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




 //SafeArea(
      //   child: Container(
      //       margin: EdgeInsets.all(10),
      //       padding: EdgeInsets.all(10),
      //       width: MediaQuery.of(context).size.width,
      //       height: MediaQuery.of(context).size.width,
      //       child: Container(
      //         height: 100,
      //         width: 300,
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           border: Border.all(
      //             color: Colors.grey.shade300,
      //           ),
      //         ),
      //         child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: <Widget>[
      //             Container(
      //               height: 80,
      //               width: 100,
      //               child: Image.asset(
      //                 SamsungImg,
      //                 height: 20,
      //               ),
      //             ),
      //             Row(
      //               children: <Widget>[
      //                 Text("Samsung "),
      //                 Icon(Icons.delete),
      //               ],
      //             ),
      //             Text('Lite'),
      //             Text('Sold'),
      //             Row(
      //               children: <Widget>[
      //                 Text('854665'),
      //                 TextButton(
      //                   onPressed: () {},
      //                   child: Text('Add to Cart'),
      //                 )
      //               ],
      //             )
      //           ],
      //         ),
      //       )),
      // ),
