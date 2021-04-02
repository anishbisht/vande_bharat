import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/widgets/HelpAndSupportList.dart';

class HelpAndSupportPage extends StatefulWidget {
  @override
  _HelpAndSupportPageState createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage> {
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
            "Help & Support",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: HelpAndSupportListWidget.helplist.length,
              // var v = HelpAndSupportListWidget.helplist.elementAt(i);
              itemBuilder: (context, index) {
                var v = HelpAndSupportListWidget.helplist.elementAt(index);
                return ListTile(
                  leading: Image.asset(
                    v.imageName,
                    height: 25,
                  ),
                  title: Text(
                    v.textname1,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: v.title_color),
                  ),
                  subtitle: Text(
                    v.textname2,
                    style: TextStyle(color: v.sub_heading_color, fontSize: 14),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
