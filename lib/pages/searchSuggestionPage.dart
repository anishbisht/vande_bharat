import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';

class SearchSuggestionListPage extends StatefulWidget {
  @override
  _SearchSuggestionListPageState createState() =>
      _SearchSuggestionListPageState();
}

class _SearchSuggestionListPageState extends State<SearchSuggestionListPage> {
  final _controllersearch = TextEditingController();

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
              Image.asset(
                BackIcon,
                height: 20,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 10, 8),
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
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
