import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/mobileCatergoryModel.dart';
import 'package:moblie_ui/models/wishlistModel.dart';
import 'package:moblie_ui/pages/changePassword.dart';
import 'package:moblie_ui/pages/customerOrder.dart';
import 'package:moblie_ui/pages/navigationDrawer.dart';
import 'package:moblie_ui/pages/wishListPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: ImageIcon(AssetImage(AppBarIcon)),
            onPressed: () {
              _key.currentState.openDrawer();
            },
          ),
          elevation: 2,
          title: Text(
            "My Profile",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      drawer: NavigationDrawer(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width - 20,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    padding: EdgeInsets.all(10),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      //shape: BoxShape.,
                      border: Border.all(
                        color: Colors.grey[300],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Karam Bajwa",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.edit,
                                    color: Colors.orange,
                                  ),
                                ]),
                          ],
                        ),
                        Text(
                          "laracraft@gmail.com",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[700]),
                        ),
                        Text(
                          "+91 984575824551",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 10.0,
                    top: -50.0,
                    child: Container(
                      height: 200,
                      width: 100,
                      child: ClipRRect(
                        child: Image.asset(
                          ProfileImage,
                          height: 50,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Get.to(() => CustomerOrder());
                },
                child: Container(
                  height: 70,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    //shape: BoxShape.,
                    border: Border.all(
                      color: Colors.grey[300],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "My Order",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      Image.asset(
                        NextArrowButton,
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => WishListPage());
                },
                child: Container(
                  height: 70,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    //shape: BoxShape.,
                    border: Border.all(
                      color: Colors.grey[300],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "My WishList",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      Image.asset(
                        NextArrowButton,
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Get.to(()=>)
                },
                child: Container(
                  height: 70,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    //shape: BoxShape.,
                    border: Border.all(
                      color: Colors.grey[300],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "My Address",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      Image.asset(
                        NextArrowButton,
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //  Get.to(()=>)
                },
                child: Container(
                  height: 70,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    //shape: BoxShape.,
                    border: Border.all(
                      color: Colors.grey[300],
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => ChangePasswordPage());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Change Password",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[700]),
                        ),
                        Image.asset(
                          NextArrowButton,
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Get.to(()=>);
                },
                child: Container(
                  height: 70,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    //shape: BoxShape.,
                    border: Border.all(
                      color: Colors.grey[300],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Logout",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      Image.asset(
                        ProfileLogoutImg,
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
