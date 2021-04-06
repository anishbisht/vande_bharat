import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      // resizeToAvoidBottomInset: false, //new line

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 140,
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
                          height: 150,
                          child: Image.asset(
                            SamsungImg,
                            height: 80,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                          padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                          height: 170,
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.favorite_border_outlined,
                                  ),
                                  Icon(Icons.close),
                                ],
                              ),
                              Text(
                                "Lite (Aura Black...",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Quatnity: ${1}",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '\u{20B9} ' + "60,999",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.add),
                                      Text('${1}'),
                                      Icon(Icons.exposure_minus_1),
                                    ],
                                  )
                                ],
                              ),

                              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //   crossAxisAlignment: CrossAxisAlignment.start,
                              //   children: [
                              //     Text("Lite Aura Black..."),
                              //     Icon(Icons.favorite),
                              //     Icon(Icons.close),
                              //   ],
                              // ),// Row(
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 140,
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
                          height: 150,
                          child: Image.asset(
                            BosesImg,
                            height: 80,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                          padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                          height: 170,
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.favorite_border_outlined,
                                  ),
                                  Icon(Icons.close),
                                ],
                              ),
                              Text(
                                "Lite (Aura Black...",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Quatnity: ${1}",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '\u{20B9} ' + "60,999",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.add),
                                      Text('${1}'),
                                      Icon(Icons.exposure_minus_1),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      ' Apply Promo',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: TextField(
                          controller: _controller,
                          onChanged: (val) {
                            val = _controller.text.toString();
                          },
                          cursorColor: Colors.grey[500],
                          decoration: InputDecoration(
                            focusColor: Colors.white,
                            fillColor: HexColor('#F2F2F2'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[500],
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[500],
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
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
                            style: TextStyle(color: Colors.green, fontSize: 16),
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Order Total',
                            style: TextStyle(fontSize: 16),
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
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: CustomTextButtonWidget(
                    title: 'Place Order',
                    onPressed: () {},
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
      ),
    );
  }
}
