import 'package:flutter/material.dart';
import 'package:moblie_ui/image_path.dart';

class HelpAndSupportPage extends StatefulWidget {
  @override
  _HelpAndSupportPageState createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage> {
  @override
  Widget build(BuildContext context) {
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
            "Help & Support",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        height: 500,
        margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                HelpAndSupportIcon,
                height: 30,
              ),
              title: Text(
                "Help and Support",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Do check our FAQs section once",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
            ),
            Drawer(),
            ListTile(
              leading: Image.asset(
                HelpAndSupportIcon,
                height: 30,
              ),
              title: Text(
                "Help and Support",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Do check our FAQs section once",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
