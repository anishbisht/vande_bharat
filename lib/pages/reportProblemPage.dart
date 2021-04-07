import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/widgets/customButtonWidget.dart';
import 'package:moblie_ui/models/imageUploadModel.dart';

import 'dart:io';

class ReportProblemPage extends StatefulWidget {
  @override
  _ReportProblemPageState createState() => _ReportProblemPageState();
}

class _ReportProblemPageState extends State<ReportProblemPage> {
  var _controller = TextEditingController();
  File _image;
  final picker = ImagePicker();
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
          elevation: 1,
          title: Text(
            "Report Problem",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "What's going wrong?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _controller,
                  onChanged: (val) {
                    val = _controller.text.toString();
                  },
                  obscureText: false,
                  cursorColor: Colors.orange[700],
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: HexColor('#F2F2F2'),
                    hintText: 'Type your query here...',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.orange[700],
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Upload A Screenshot",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),

                // Center(
                //   child: _image == null
                //       ? Text('No image selected.')
                //       : Image.file(_image),
                // ),
                // FloatingActionButton(
                //   onPressed: getImage,
                //   tooltip: 'Pick Image',
                //   child: Icon(Icons.add_a_photo),
                // ),
                //
                Container(
                  height: 300,
                  width: 200,
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Please only leave feedback about Vande Bharat Bazar and our features. All reports are subject to our Term to Use.",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: CustomTextButtonWidget(
                    title: 'Submit',
                    buttonColor: HexColor('#EF7C1F'),
                    onPressed: () {},
                    textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
}
