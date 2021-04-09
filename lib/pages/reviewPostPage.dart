import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moblie_ui/image_path.dart';

class ReviewPostPage extends StatefulWidget {
  @override
  _ReviewPostPageState createState() => _ReviewPostPageState();
}

class _ReviewPostPageState extends State<ReviewPostPage> {
  final _controller = TextEditingController();
  final _controller1 = TextEditingController();
  final picker = ImagePicker();
  File _image;
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImage1() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("No image selected. ");
      }
    });
  }

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
            "Write Review",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 10, 10, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Please write Overall level of satisfication with shpping/Delivery/Product",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Your Comment",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: TextField(
                    controller: _controller,
                    onChanged: (val) {
                      val = _controller.text.toString();
                    },
                    obscureText: false,
                    cursorColor: Colors.orange[700],
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.orange[700],
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.orange[700],
                          width: 2.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Write Your Review',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: TextField(
                    controller: _controller1,
                    onChanged: (val) {
                      val = _controller1.text.toString();
                    },
                    obscureText: false,
                    cursorColor: Colors.orange[700],
                    decoration: InputDecoration(
                      filled: true,
                      focusColor: HexColor('#F2F2F2'),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.orange[700],
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.orange[700],
                          width: 2.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    maxLines: 5,
                    maxLength: 500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Add Photo",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 100,
                  width: 150,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    //shape: BoxShape.,
                    border: Border.all(
                      color: Colors.grey[300],
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: getImage,
                      child: Image.asset(
                        Circular_add,
                        height: 45,
                        width: 45,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        getImage1();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      getImage();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
