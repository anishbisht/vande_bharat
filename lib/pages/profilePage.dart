import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/mobileCatergoryModel.dart';
import 'package:moblie_ui/models/wishlistModel.dart';
import 'package:moblie_ui/pages/bottomNavbar.dart';
import 'package:moblie_ui/pages/changePassword.dart';
import 'package:moblie_ui/pages/customerAddress.dart';
import 'package:moblie_ui/pages/customerOrder.dart';
import 'package:moblie_ui/pages/editProfilePage.dart';
import 'package:moblie_ui/pages/navigationDrawer.dart';
import 'package:moblie_ui/pages/signInEmailNumberPage.dart';
import 'package:moblie_ui/pages/wishListPage.dart';
import 'package:moblie_ui/size_config.dart';
import 'package:moblie_ui/utlis/values/strings.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  int index = 3;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    SizeConfig().init(context);
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
            Strings.myProfile,
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
                    height: SizeConfig.blockSizeVertical * 15,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        Wrap(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Text(
                              "Karam Bajwa",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              onTap: () => Get.to(EditProfilePage()),
                              child: Icon(
                                Icons.edit,
                                color: Colors.orange,
                              ),
                            )
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
                    left: 10,
                    top: -60.0,
                    child: Container(
                      height: SizeConfig.blockSizeVertical * 32,
                      width: SizeConfig.blockSizeHorizontal * 22,
                      child: ClipRRect(
                        child: Image.asset(
                          ProfileImage,
                          height: 25,
                          width: 20,
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
                        Strings.myOrders,
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
                        Strings.myWishtlist,
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
                  Get.to(() => CustomerAddressPage());
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
                        Strings.myAddress,
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
                          Strings.changePassword,
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
                  Get.to(() => SingInEmailPasswordPage());
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
                        Strings.logOut,
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
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
