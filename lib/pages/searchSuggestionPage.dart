import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/widgets/SearchListWidget.dart';

class SearchSuggestionListPage extends StatefulWidget {
  @override
  _SearchSuggestionListPageState createState() =>
      _SearchSuggestionListPageState();
}

class _SearchSuggestionListPageState extends State<SearchSuggestionListPage> {
  final _controllersearch = TextEditingController();
  var v;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

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
                width: MediaQuery.of(context).size.width - 80,
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
        child: ListView.builder(
          itemCount: SearchTextList.searchText.length,
          itemBuilder: (BuildContext context, int index) {
            v = SearchTextList.searchText.elementAt(index);
            return ListTile(
              title: Text(
                v.text,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600),
              ),
            );
          },
        ),
      ),
    );
  }
}
