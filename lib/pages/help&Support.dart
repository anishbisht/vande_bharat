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
        margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: <Widget>[
            //     Image.asset(
            //       HelpAndSupportIcon,
            //       height: 30,
            //     ),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisSize: MainAxisSize.min,
            //       children: <Widget>[
            //         Text(
            //           "Help and Support",
            //           style:
            //               TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            //         ),
            //         SizedBox(
            //           height: 12,
            //         ),
            //         Expanded(
            //           child: Text(
            //             "Do Check our FaQs section oncevsvsvssvssvssfffwaffsvssasfsfssfsfsfsfsfsfsfsfsfsf.",
            //             style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // Divider(),
            // Container(
            //   margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Image.asset(
            //         EmailIcon,
            //         height: 30,
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: <Widget>[
            //           Text(
            //             "Email",
            //             style: TextStyle(
            //                 fontSize: 18, fontWeight: FontWeight.w500),
            //           ),
            //           SizedBox(
            //             height: 12,
            //           ),
            //           Text(
            //             "customercare@vandebharatbazar.com",
            //             style: TextStyle(fontSize: 18, color: Colors.orange),
            //           ),
            //           Text(
            //             ''' You can email us at the above mentioned id, we will revert within 1 business day. ''',
            //             maxLines: 3,
            //             style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),

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
