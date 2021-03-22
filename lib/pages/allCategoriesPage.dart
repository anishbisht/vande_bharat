import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/widgets/allCategoriesListWidget.dart';

class AllCategories extends StatefulWidget {
  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
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
            "All Categories",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: GridView.builder(
          physics: new NeverScrollableScrollPhysics(),
          itemCount: AllCategoriesListWidget.categoriesList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1, crossAxisCount: 2),
          itemBuilder: (_, i) {
            var v = AllCategoriesListWidget.categoriesList.elementAt(i);
            return Column(
              children: <Widget>[
                Container(
                  width: v.containerWidth,
                  height: v.containerHeight,
                  child: Center(
                    child: Image.asset(
                      v.imageName,
                      height: v.imageHeight,
                    ),
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  v.textName1,
                  style:
                      TextStyle(fontSize: v.fontSize, fontWeight: v.fontWeight),
                ),
                Text(
                  v.textName2,
                  style: TextStyle(
                    fontSize: v.fontSize,
                    fontWeight: v.fontWeight,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
