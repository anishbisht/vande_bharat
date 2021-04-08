import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/filterPage.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/widgets/list_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

//import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileCategory extends StatefulWidget {
  static const String routeName = '/mobile';

  @override
  _MobileCategoryState createState() => _MobileCategoryState();
}

class _MobileCategoryState extends State<MobileCategory> {
  @override
  Widget build(BuildContext context) {
    double grid_width = MediaQuery.of(context).size.width * 0.6;
    double grid_height = MediaQuery.of(context).size.height * 0.8;

    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          title: Text(
            "Mobiles",
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Container(
              height: 40,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        FilterIcon,
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => FilterPage());
                        },
                        child: Text(
                          "Filter By",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        SortIcon,
                        height: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 400,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Sort By",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            "Clear All",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.green),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Price: Low to High",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          new Radio(
                                            value: 0,
                                            groupValue: "",
                                            onChanged: null,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Price: High to Low",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          new Radio(
                                            value: 1,
                                            groupValue: "",
                                            onChanged: null,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Relevance",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          new Radio(
                                            value: 2,
                                            groupValue: "",
                                            onChanged: null,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Newet First",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          new Radio(
                                            value: 3,
                                            groupValue: "",
                                            onChanged: null,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Popularity",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          new Radio(
                                            value: 4,
                                            groupValue: "",
                                            onChanged: null,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width -
                                                10,
                                        child: CustomTextButtonWidget(
                                          title: "Add Address",
                                          onPressed: () {},
                                          textColor: Colors.white,
                                          buttonColor: Colors.orange[800],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          "Sort By",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          // child: new StaggeredGridView.countBuilder(
          //   crossAxisCount: 4,
          //   itemCount: ListWidgets.mobileList.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     var v = ListWidgets.mobileList.elementAt(index);
          //     return Container(
          //       margin: v.containerMargin,
          //       padding: v.containerPadding,
          //       // width: v.containerWidth,
          //       // height: v.containerHeight,
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         border: Border.all(
          //           color: Colors.grey.shade300,
          //         ),
          //       ),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: <Widget>[
          //           Center(
          //             child: Image.asset(
          //               v.imageName,
          //               height: v.imageHeight,
          //               fit: v.fit,
          //             ),
          //           ),
          //           Text(
          //             v.textName1,
          //             style: TextStyle(
          //                 fontWeight: v.fontWeight1, fontSize: v.fontSize1),
          //           ),
          //           Text(
          //             v.textName2,
          //             style: TextStyle(
          //                 fontWeight: v.fontWeight2, fontSize: v.fontSize2),
          //           ),
          //           SizedBox(
          //             height: 7,
          //           ),
          //           Text(
          //             v.textName3,
          //             style: TextStyle(
          //                 fontSize: v.fontSize3, fontWeight: v.fontWeight3),
          //           ),
          //           SizedBox(
          //             height: 7,
          //           ),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: <Widget>[
          //               Text(
          //                 v.textName4,
          //                 style: TextStyle(
          //                   fontSize: v.fontSize4,
          //                   fontWeight: v.fontWeight4,
          //                   color: v.color4,
          //                 ),
          //               ),
          //               Row(
          //                 children: <Widget>[
          //                   Icon(
          //                     Icons.star,
          //                     color: Colors.yellow[700],
          //                     size: 10.0,
          //                   ),
          //                   Text(v.textName5)
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ],
          //       ),
          //     );
          //   },
          //   staggeredTileBuilder: (int index) => new StaggeredTile.count(2, 3),
          //   mainAxisSpacing: 4.0,
          //   crossAxisSpacing: 4.0,
          // ),
          child: GridView.builder(
            itemCount: ListWidgets.mobileList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 18 / 19.8),
            itemBuilder: (BuildContext context, int index) {
              var v = ListWidgets.mobileList.elementAt(index);
              return Container(
                margin: v.containerMargin,
                padding: v.containerPadding,
                width: v.containerWidth,
                height: v.containerHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Center(
                        child: Image.asset(
                          v.imageName,
                          height: v.imageHeight,
                          fit: v.fit,
                        ),
                      ),
                    ),
                    Text(
                      v.textName1,
                      style: TextStyle(
                          fontWeight: v.fontWeight1, fontSize: v.fontSize1),
                    ),
                    Text(
                      v.textName2,
                      style: TextStyle(
                          fontWeight: v.fontWeight2, fontSize: v.fontSize2),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      v.textName3,
                      style: TextStyle(
                          fontSize: v.fontSize3, fontWeight: v.fontWeight3),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          v.textName4,
                          style: TextStyle(
                            fontSize: v.fontSize4,
                            fontWeight: v.fontWeight4,
                            color: v.color4,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 10.0,
                            ),
                            Text(v.textName5)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
