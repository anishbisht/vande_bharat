import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/widgets/notificatonlListWidget.dart';

class NotificatonsPage extends StatefulWidget {
  @override
  _NotificatonsPageState createState() => _NotificatonsPageState();
}

class _NotificatonsPageState extends State<NotificatonsPage> {
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
            "Notifications",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 10, 10, 20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: NotificationListWidget.notificatonlist.length,
              // var v = HelpAndSupportListWidget.helplist.elementAt(i);
              itemBuilder: (context, index) {
                var v = NotificationListWidget.notificatonlist.elementAt(index);
                return Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        v.imageName,
                        height: 22,
                      ),
                      title: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            v.textname1,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: v.title_color),
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              v.textname2,
                              style: TextStyle(
                                  color: v.sub_heading_color,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              v.textname3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
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










