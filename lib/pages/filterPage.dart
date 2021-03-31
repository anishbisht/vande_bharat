import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          elevation: 1,
          title: Text(
            "Filter By",
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Clear All",
                  style: TextStyle(fontSize: 18, color: Colors.green[700]),
                ))
          ],
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            

          ],
        ),
      ),
    );
  }
}
