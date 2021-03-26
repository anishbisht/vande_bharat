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
            "Notificatons",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: NotificationListWidget.notificatonlist.length,
          // var v = HelpAndSupportListWidget.helplist.elementAt(i);
          itemBuilder: (context, index) {
            var v = NotificationListWidget.notificatonlist.elementAt(index);
            return Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ListTile(
                leading: Image.asset(
                  v.imageName,
                  height: 20,
                ),
                title: Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    v.textname1,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: v.title_color),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    v.textname2,
                    style: TextStyle(color: v.sub_heading_color, fontSize: 14),
                  ),
                ),
              ),
            );
          },
        ),
      )),
    );
  }
}










// child: Column(
          //   children: <Widget>[
          //     Container(
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.end,
          //         children: [
          //           Row(
          //             children: <Widget>[
          //               Container(
          //                 height: 20,
          //                 child: Image.asset(Notification_Icon),
          //               ),
          //               SizedBox(
          //                 width: 10,
          //               ),
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 mainAxisAlignment: MainAxisAlignment.start,
          //                 children: <Widget>[
          //                   Text(
          //                     "The Best Title",
          //                     style: TextStyle(
          //                         fontSize: 16, fontWeight: FontWeight.bold),
          //                   ),
          //                   SizedBox(
          //                     height: 5,
          //                   ),
          //                   Container(
          //                     height: 100,
          //                     width: MediaQuery.of(context).size.width - 70,
          //                     child: Text(
          //                       "This text is very very very very very very very very vevzdfgasgasgafdgadfgadfgadfgadfgadfgadfgadfgadfgadfgry very very very very very very very very very very very very very very very very long",
          //                       maxLines: 10,
          //                       overflow: TextOverflow.ellipsis,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ],
          //       ),