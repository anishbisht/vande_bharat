import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          leading: IconButton(
            icon: ImageIcon(
              AssetImage(AppBarIcon),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 2,
          title: Text(
            "My Cart",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      // body: Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height,
      //   margin: EdgeInsets.all(10),
      //   // padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      //   child: Column(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(
      //             child: Container(
      //               // alignment: Alignment.topLeft,
      //               width: 100,
      //               height: 200,
      //               child: Image.asset(
      //                 SamsungImg,
      //                 height: 100,
      //               ),
      //             ),
      //           ),
      //            Container(
      //         // width: 200,
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Container(
      //               width: 200,
      //               // child: ListTile(
      //               //   title: Text('Samsung'),
      //               //   subtitle: Text("Quantity"),
      //               //   trailing: Icon(Icons.favorite),
      //               //   dense: true,
      //               //   isThreeLine: true,contentPadding: const EdgeInsets.all(10),
      //               // ),
      //               child: Column(children: [
      //                 Text('Samsung'),
      //                 Text("Quantity"),
      //               ],),
      //             ),
      //              Icon(Icons.favorite),
      //             Align(
      //               alignment: Alignment.topRight,
      //               child: Icon(Icons.close)),

      //           ],
      //         ),
      //       ),
      //         ],
      //       ),

      //     ],
      //   ),
      // ),
      // body: Column(
      //   children: <Widget>[

      //   ],
      // ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  height: 170,
                  child: Image.asset(
                    SamsungImg,
                    height: 100,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Samsung"),
                          Icon(Icons.favorite),
                          Icon(Icons.close),
                        ],
                      ),
                      Text("Lite (Aura Black..."),
                      Text("Quatnity"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("648251"),
                          Icon(Icons.add),
                          Icon(Icons.),
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text("Lite Aura Black..."),
                      //     Icon(Icons.favorite),
                      //     Icon(Icons.close),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
