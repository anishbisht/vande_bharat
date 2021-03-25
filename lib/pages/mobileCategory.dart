

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/widgets/list_widget.dart';

class MobileCategory extends StatefulWidget {
  static const String routeName = '/mobile';

  @override
  _MobileCategoryState createState() => _MobileCategoryState();
}

class _MobileCategoryState extends State<MobileCategory> {
  @override
  Widget build(BuildContext context) {
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
                      Text(
                        "Filter By",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
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
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            isScrollControlled: false,
                            isDismissible: true,
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (context) => DraggableScrollableSheet(
                              initialChildSize: 0.1,
                              minChildSize: 0.1,
                              maxChildSize: 0.1,
                              builder: (context, scrollController) {
                                return SingleChildScrollView(
                                  controller: scrollController,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Sort By",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            Text(
                                              'Clear All',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Price: Low to High",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        ListTile(
                                          title: const Text('Lafayette'),
                                          leading: Radio(
                                            value: "T",
                                            onChanged: (value) {
                                              setState(() {
                                                value = value;
                                              });
                                            },
                                          ),
                                        ),
                                        ListTile(
                                          title: const Text('Thomas Jefferson'),
                                          leading: Radio(
                                            value: "F",
                                            onChanged: (value) {
                                              setState(() {
                                                value = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
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
      body: Container(
          margin: EdgeInsets.all(10),
          child: GridView.builder(
              itemCount: ListWidgets.mobileList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.6 / 0.8, crossAxisCount: 2),
              itemBuilder: (_, i) {
                var v = ListWidgets.mobileList.elementAt(i);
                return Container(
                  margin: v.containerMargin,
                  padding: v.containerPadding,
                  height: v.containerHeight,
                  width: v.containerWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Image.asset(
                          v.imageName,
                          height: v.imageHeight,
                          fit: v.fit,
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
                );
              })),
    );
  }
}
