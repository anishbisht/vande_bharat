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
      // body: Container(
      //   height: 500,
      //   margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
      //   child: Column(
      //     children: <Widget>[
      //       ListTile(
      //         leading: Image.asset(
      //           HelpAndSupportIcon,
      //           height: 30,
      //         ),
      //         title: Text(
      //           "Help and Support",
      //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      //         ),
      //         subtitle: Text(
      //           "Do check our FAQs section once",
      //           style: TextStyle(color: Colors.grey[700], fontSize: 16),
      //         ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: HelpAndSupportListWidget.helplist.length,
              itemBuilder: (context, index) {
                var v = HelpAndSupportListWidget.helplist.elementAt(index);
                return ListTile(
                  visualDensity: VisualDensity(
                    horizontal: 0,
                    vertical: 4,
                  ),
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
                  subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          v.textname2,
                          style: TextStyle(
                              color: v.sub_heading_color, fontSize: 14),
                        ),
                        Text(
                          v.textname3,
                          style: TextStyle(fontSize: 16),
                        ),
                        Divider()
                      ]),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
