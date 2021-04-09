import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/wishlistModel.dart';
import 'package:moblie_ui/pages/allCategoriesPage.dart';
import 'package:moblie_ui/pages/bottomNavbar.dart';
import 'package:moblie_ui/pages/cartPage.dart';
import 'package:moblie_ui/pages/customerOrder.dart';
import 'package:moblie_ui/pages/mobileCategory.dart';
import 'package:moblie_ui/pages/navigationDrawer.dart';
import 'package:moblie_ui/pages/notificatonsPage.dart';
import 'package:moblie_ui/pages/productDetails.dart';
import 'package:moblie_ui/pages/profilePage.dart';
import 'package:moblie_ui/pages/wishListPage.dart';

import 'package:moblie_ui/widgets/customCategoriesWidget.dart';
import 'package:moblie_ui/widgets/customProductWidget.dart';
import 'package:moblie_ui/widgets/headingRowWidget.dart';

import 'navigationDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controllersearch = TextEditingController();
  int index = 0;

  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      key: _key,
      //.........................AppBar.................................
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: ImageIcon(AssetImage(AppBarIcon)),
            onPressed: () {
              _key.currentState.openDrawer();
            },
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: SizedBox(
              height: 50,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 10, 8),
                    width: MediaQuery.of(context).size.width - 120,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      controller: _controllersearch,
                      onChanged: (val) {
                        val = _controllersearch.text.toString();
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.green,
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => WishListPage());
                    },
                    child: Image.asset(
                      WishListIcon,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => NotificatonsPage());
                      },
                      child: Image.asset(
                        NotificationIcon,
                        height: 30,
                      )),
                ],
              ),
            ),
          ),
          elevation: 2.0,
          backgroundColor: Colors.white,
          title: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    AppBarLogo1,
                    height: 15,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    AppBarLogo2,
                    height: 22,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    AppBarLogo3,
                    height: 12,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ///////////////////////............................AppBar...................................
      drawer: NavigationDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    Sld,
                  ),
                  SizedBox(height: 20),
                  CustomHeadingRowWidget(
                    textname1: 'All Categories',
                    onPressed: () {
                      Get.to(() => AllCategories());
                    },
                    fontSize1: 20,
                    fontSize2: 18,
                    textname2: 'View all',
                    color1: Colors.black,
                    color2: Colors.orange[700],
                    fontWeight1: FontWeight.w500,
                    fontWeight2: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CustomCatergoriesWidget(
                          containerHeight: 75,
                          containerWidth: 75,
                          imageName: MoblieIcon,
                          imageHeight: 30,
                          textName1: 'Mobiles',
                          textName2: '',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CustomCatergoriesWidget(
                          containerHeight: 75,
                          containerWidth: 75,
                          imageName: ComputerIcon,
                          imageHeight: 30,
                          textName1: 'Computers',
                          textName2: '',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CustomCatergoriesWidget(
                          containerHeight: 75,
                          containerWidth: 75,
                          imageName: ElectronicLogo,
                          imageHeight: 30,
                          textName1: 'Electronics',
                          textName2: '',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CustomCatergoriesWidget(
                          containerHeight: 75,
                          containerWidth: 75,
                          imageName: HeadsetIcon,
                          imageHeight: 30,
                          textName1: 'Mobiles',
                          textName2: 'Accessories',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CustomCatergoriesWidget(
                          containerHeight: 75,
                          containerWidth: 75,
                          imageName: ComputerIcon,
                          imageHeight: 30,
                          textName1: 'Computer',
                          textName2: 'Accessories',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomHeadingRowWidget(
                    onPressed: () {
                      Get.to(() => AllCategories());
                    },
                    textname1: 'Recommended Products',
                    fontSize1: 20,
                    fontSize2: 18,
                    textname2: 'View all',
                    color1: Colors.black,
                    color2: Colors.orange[700],
                    fontWeight1: FontWeight.w500,
                    fontWeight2: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: WatchImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Samsung Galaxy',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: 'Watch Active 2..',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'Sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${27499}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: MobileImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Redmi Note 9 Pro',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '(Interstellar Black...)',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: '',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${14499}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: MobileImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Redmi Note 9 Pro',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '(Interstellar Black...)',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: '',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${14499}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    child: Image.asset(
                      Banner1,
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomHeadingRowWidget(
                    onPressed: () {
                      Get.to(() => AllCategories());
                    },
                    textname1: 'Popular Brands',
                    fontSize1: 20,
                    fontSize2: 18,
                    textname2: 'View all',
                    color1: Colors.black,
                    color2: Colors.orange[700],
                    fontWeight1: FontWeight.w500,
                    fontWeight2: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: AusuLaptopImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'ASUS ZenBook 13 Ultra',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: 'Slim Laptop (8th -G..',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'Sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${68499}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: BosesImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Boses SoundSport',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '(Wireless Earbuds, (S',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${8999}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: MobileProduct2,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Apple iPhone SE',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '(Black, 64 GB)',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${23400}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomHeadingRowWidget(
                    textname1: 'Mobile',
                    fontSize1: 20,
                    fontSize2: 18,
                    textname2: 'View all',
                    color1: Colors.black,
                    color2: Colors.orange[700],
                    fontWeight1: FontWeight.w500,
                    fontWeight2: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: SamsungImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Samsung Galaxy Note',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '10 Lite(Aura Black...',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'Sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${60999}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: MobileProduct2,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Boses SoundSport',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '(Black 64 GB)',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${34999}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: MobileImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Redmi Note 9 Pro',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '(Interstellar Black..',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${17999}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Image.asset(
                      AdsBanner2,
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Image.asset(
                      Banner3,
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomHeadingRowWidget(
                    textname1: 'Computer',
                    fontSize1: 20,
                    fontSize2: 18,
                    textname2: 'View all',
                    color1: Colors.black,
                    color2: Colors.orange[700],
                    fontWeight1: FontWeight.w500,
                    fontWeight2: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: ComputerProduct1,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Microsoft Surface Pro',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '6(Inter Core i5, 8gb..',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'Sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${89900}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: ComputerProduct2,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'New Apple MacBook',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: 'Pro(16-Inch, 16GB..',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${137999}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: AusuLaptopImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Asus ZenBook 13 Ultra',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: 'Slim Laptop (8th-G..',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${34999}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomHeadingRowWidget(
                    textname1: 'Electronics',
                    fontSize1: 20,
                    fontSize2: 18,
                    textname2: 'View all',
                    color1: Colors.black,
                    color2: Colors.orange[700],
                    fontWeight1: FontWeight.w500,
                    fontWeight2: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: WatchImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Samsung Galaxy',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: 'Watch Active',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'Sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${27499}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: BosesImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Boses SoundSport',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '(Interstellar Black...)',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${14499}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                        CustomProductWidget(
                          containerMargin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          containerHeight: 250,
                          containerWidth: 150,
                          imageName: MobileImg,
                          imageHeight: 150,
                          fit: BoxFit.fill,
                          textName1: 'Apple iPhone SE',
                          fontSize1: 14,
                          fontWeight1: FontWeight.w600,
                          textName2: '(Black, 64 GB)',
                          fontSize2: 14,
                          fontWeight2: FontWeight.w600,
                          textName3: 'sold by Digital World Galaxy',
                          fontSize3: 10,
                          fontWeight3: FontWeight.w300,
                          textName4: '\u{20B9}${68499}',
                          fontSize4: 20,
                          fontWeight4: FontWeight.bold,
                          color4: HexColor('#129740'),
                          textName5: '4.2',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(),

      // ..........................................
      // bottomNavigationBar: BottomAppBar(
      //   elevation: 5,

      //   //color: themeChangeProvider.darkTheme?Colors.black:Color(BOTTOM_BAR_COLOR),
      //   notchMargin: 2.0,
      //   shape: CircularNotchedRectangle(),

      //   child: Container(
      //     padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
      //     child: new Row(
      //       mainAxisSize: MainAxisSize.max,
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: <Widget>[
      //         Column(
      //           mainAxisSize: MainAxisSize.min,
      //           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             SizedBox(
      //               width: 50.0,
      //             ),
      //             IconButton(
      //               icon: ImageIcon(
      //                 AssetImage(Bottom_nav_bar_home),
      //                 size: 28,
      //               ),
      //               color: currentTab == 0 ? null : Colors.grey,
      //               onPressed: () {
      //                 setState(() {
      //                   currentTab = 0;
      //                   currentPage = _widgetOptions[currentPage];
      //                   Navigator.pushNamed(context, currentPage);

      //                   print(currentPage);
      //                 });
      //               },
      //             ),
      //           ],
      //         ),
      //         Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             IconButton(
      //               icon: ImageIcon(
      //                 AssetImage(Bottom_nav_bar_cart),
      //                 size: 28,
      //               ),
      //               color: currentTab == 1 ? null : Colors.grey,
      //               onPressed: () {
      //                 setState(
      //                   () {
      //                     currentTab = 1;
      //                     currentPage = _widgetOptions[currentPage];
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                           builder: (context) => currentPage()),
      //                     );
      //                   },
      //                 );
      //               },
      //             ),
      //           ],
      //         ),
      //         Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             IconButton(
      //               icon: ImageIcon(
      //                 AssetImage(Bottom_nav_bar_order),
      //                 size: 28,
      //               ),
      //               color: currentTab == 2 ? null : Colors.grey,
      //               onPressed: () {
      //                 setState(() {
      //                   // color:
      //                   // Colors.green;
      //                   currentTab = 2;
      //                 });
      //               },
      //             ),
      //           ],
      //         ),
      //         Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             IconButton(
      //               // icon: Icon(Icons.person),
      //               icon: ImageIcon(
      //                 AssetImage(Bottom_nav_bar_account),
      //                 size: 28,
      //               ),
      //               color: currentTab == 3 ? null : Colors.grey,

      //               onPressed: () {
      //                 setState(
      //                   () {
      //                     currentTab = 3;
      //                   },
      //                 );
      //               },
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
