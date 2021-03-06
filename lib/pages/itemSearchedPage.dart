import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/searchListItemModel.dart';
import 'package:moblie_ui/pages/filterPage.dart';
import 'package:moblie_ui/utlis/values/strings.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/widgets/searchListItemsWidget.dart';

class ItemSearchedPage extends StatefulWidget {
  @override
  _ItemSearchedPageState createState() => _ItemSearchedPageState();
}

class _ItemSearchedPageState extends State<ItemSearchedPage> {
  final _controllersearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 70,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Image.asset(
                      BackIcon,
                      height: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 8),
                    width: MediaQuery.of(context).size.width - 80,
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.green,
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Container(
                height: 60,
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
                            Strings.filterBy,
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
                                              Strings.sortBy,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                            Strings.clearAll,
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
                                              Strings.priceLowToHigh,
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
                                              Strings.priceHighToLow,
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
                                            Strings.relevance,
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
                                              Strings.newestFirst,
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
                                              Strings.popularity,
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              10,
                                          child: CustomTextButtonWidget(
                                            title:Strings.apply,
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
                            Strings.sortBy,
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
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: SearchListItemWidget.listItem.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 18 / 19.8, crossAxisCount: 2),
          itemBuilder: (_, i) {
            var v = SearchListItemWidget.listItem.elementAt(i);
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
                    crossAxisAlignment: CrossAxisAlignment.end,
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
    );
  }
}
