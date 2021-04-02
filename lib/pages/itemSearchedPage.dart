import 'package:flutter/material.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/searchListItemModel.dart';
import 'package:moblie_ui/widgets/searchListItemsWidget.dart';

class ItemSearchedPage extends StatefulWidget {
  @override
  _ItemSearchedPageState createState() => _ItemSearchedPageState();
}

class _ItemSearchedPageState extends State<ItemSearchedPage> {
  final _controllersearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SizedBox(
          height: 60,
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
                width: 300,
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  controller: _controllersearch,
                  onChanged: (val) {
                    val = _controllersearch.text.toString();
                  },
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
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: SearchListItemWidget.listItem.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.6 / 0.8, crossAxisCount: 2),
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
