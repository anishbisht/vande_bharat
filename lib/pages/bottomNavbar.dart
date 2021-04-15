import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/controller/bottom_nav_controller.dart';
import 'package:moblie_ui/models/helpAndSupportModel.dart';
import 'package:moblie_ui/models/searchListItemModel.dart';
import 'package:moblie_ui/models/wishlistModel.dart';
import 'package:moblie_ui/pages/FASQuestion.dart';
import 'package:moblie_ui/pages/addAddressPage.dart';
import 'package:moblie_ui/pages/allCategoriesPage.dart';
import 'package:moblie_ui/pages/cartPage.dart';
import 'package:moblie_ui/pages/changePassword.dart';
import 'package:moblie_ui/pages/customerAddress.dart';
import 'package:moblie_ui/pages/customerOrder.dart';
import 'package:moblie_ui/pages/editProfilePage.dart';
import 'package:moblie_ui/pages/help&Support.dart';
import 'package:moblie_ui/pages/homePage.dart';
import 'package:moblie_ui/pages/itemSearchedPage.dart';
import 'package:moblie_ui/pages/mobileCategory.dart';
import 'package:moblie_ui/pages/notificatonsPage.dart';
import 'package:moblie_ui/pages/orderDetails.dart';
import 'package:moblie_ui/pages/paymentPage.dart';
import 'package:moblie_ui/pages/productDetails.dart';
import 'package:moblie_ui/pages/profilePage.dart';
import 'package:moblie_ui/pages/rating&Review.dart';
import 'package:moblie_ui/pages/reasonForCancellationPage.dart';
import 'package:moblie_ui/pages/reportProblemPage.dart';
import 'package:moblie_ui/pages/reviewPostPage.dart';
import 'package:moblie_ui/pages/searchSuggestionPage.dart';
import 'package:moblie_ui/pages/shipToPage.dart';
import 'package:moblie_ui/pages/wishListPage.dart';

import '../image_path.dart';
import 'package:get/state_manager.dart';
import 'package:moblie_ui/Binding/onboarding_binding.dart';

// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   List<Widget> _widgetOptions = <Widget>[
//     HomePage(),
//     CartPage(),
//     CustomerOrder(),
//     ProfilePage(),
//   ];
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _widgetOptions.elementAt(_currentIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (int _currentIndex) {
//           setState(() {
//             this._currentIndex = _currentIndex;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         items: [
//           new BottomNavigationBarItem(
//             backgroundColor: Colors.white,
//             icon: _currentIndex == 0
//                 ? new Image.asset(
//                     Bottom_nav_bar_home1,
//                     height: 25,
//                   )
//                 : new Image.asset(
//                     Bottom_nav_bar_home,
//                     height: 25,
//                   ),
//             label: '',
//           ),
//           new BottomNavigationBarItem(
//             icon: _currentIndex == 1
//                 ? new Image.asset(
//                     Bottom_nav_bar_cart1,
//                     height: 25,
//                   )
//                 : new Image.asset(
//                     Bottom_nav_bar_cart,
//                     height: 25,
//                   ),
//             label: '',
//           ),
//           new BottomNavigationBarItem(
//             icon: _currentIndex == 2
//                 ? new Image.asset(
//                     Bottom_nav_bar_order1,
//                     height: 25,
//                   )
//                 : new Image.asset(
//                     Bottom_nav_bar_order,
//                     height: 25,
//                   ),
//             label: '',
//           ),
//           new BottomNavigationBarItem(
//             icon: _currentIndex == 3
//                 ? new Image.asset(
//                     Bottom_nav_bar_account1,
//                     height: 25,
//                   )
//                 : new Image.asset(
//                     Bottom_nav_bar_account,
//                     height: 25,
//                   ),
//             label: '',
//           ),
//         ],
//       ),
//     );
//   }
// }
//
class MainScreen extends GetView<MainscreenController> {
  MainscreenController controller = Get.put(MainscreenController());
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CartPage(),
    CustomerOrder(),
    ProfilePage(),
    MobileCategory(),
    ProductDetailsPage(),
    AllCategories(),
    WishListPage(),
    RatingReview(),
    ReviewPostPage(),
    CustomerShipToPage(),
    PaymentPage(),
    CustomerOrderDetails(),
    ReasonForCancellation(),
    ItemSearchedPage(),
    SearchSuggestionListPage(),
    NotificatonsPage(),
    EditProfilePage(),
    CustomerAddressPage(),
    AddAddressPage(),
    ChangePasswordPage(),
    HelpAndSupportPage(),
    FAQ(),
    ReportProblemPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            new BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: controller.selectedIndex == 0
                  ? new Image.asset(
                      Bottom_nav_bar_home1,
                      height: 30,
                    )
                  : new Image.asset(
                      Bottom_nav_bar_home,
                      height: 25,
                    ),
              label: '',
            ),
            new BottomNavigationBarItem(
              icon: controller.selectedIndex == 1
                  ? new Image.asset(
                      Bottom_nav_bar_cart1,
                      height: 30,
                    )
                  : new Image.asset(
                      Bottom_nav_bar_cart,
                      height: 25,
                    ),
              label: '',
            ),
            new BottomNavigationBarItem(
              icon: controller.selectedIndex == 2
                  ? new Image.asset(
                      Bottom_nav_bar_order1,
                      height: 30,
                    )
                  : new Image.asset(
                      Bottom_nav_bar_order,
                      height: 25,
                    ),
              label: '',
            ),
            new BottomNavigationBarItem(
              icon: controller.selectedIndex == 3
                  ? new Image.asset(
                      Bottom_nav_bar_account1,
                      height: 30,
                    )
                  : new Image.asset(
                      Bottom_nav_bar_account,
                      height: 25,
                    ),
              label: '',
            ),
          ],
          currentIndex: controller.selectedIndex,
          onTap: (index) => controller.selectedIndex = index,
        ),
      ),
      body: Obx(() => _widgetOptions.elementAt(controller.selectedIndex)),
    );
  }
}
