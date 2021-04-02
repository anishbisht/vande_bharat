// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:moblie_ui/image_path.dart';

// import 'package:moblie_ui/pages/signInEmailNumberPage.dart';

// class OnBoardingPage extends StatefulWidget {
//   @override
//   _OnBoardingPageState createState() => _OnBoardingPageState();
// }

// class _OnBoardingPageState extends State<OnBoardingPage> {
//   PageController _pageController;
//   int currentIndex = 0;
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   void slider(currentIndex) {
//     setState(() {
//       if (currentIndex == 2)
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => SingInEmailPasswordPage()),
//         );

//       _pageController.jumpToPage(currentIndex + 1);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setEnabledSystemUIOverlays([]);

//     return Scaffold(
//       body: SafeArea(
//         child: PageView(
//           controller: _pageController,
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     "Search Your",
//                     style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.orange[700]),
//                   ),
//                   Text(
//                     "Product",
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.orange[700],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Image.asset(
//                     Slider1,
//                     height: 350,
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Type the name of the product you wish to purchase in the search box. Alternatively, click onto to a product you wish to buy.",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: Container(
//                       height: 40,
//                       width: 40,
//                       child: TextButton(
//                         onPressed: () {
//                           // slider(currentIndex);
//                         },
//                         child: Text(
//                           ">",
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.white,
//                             backgroundColor: Colors.orange[700],
//                           ),
//                         ),
//                         style: TextButton.styleFrom(
//                           backgroundColor: Colors.orange[700],
//                           //onSurface: Colors.grey,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     "  ",
//                     style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.orange[800]),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Image.asset(
//                     Slider2,
//                     height: 340,
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Text(
//                     "Select, collect and manage your products with the 'Add to Cart' option to proceed with your shopping",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: Container(
//                       height: 40,
//                       width: 40,
//                       child: TextButton(
//                         onPressed: () {
//                           // slider(currentIndex);
//                         },
//                         child: Text(
//                           ">",
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.white,
//                             backgroundColor: Colors.orange[700],
//                           ),
//                         ),
//                         style: TextButton.styleFrom(
//                           backgroundColor: Colors.orange[700],
//                           //onSurface: Colors.grey,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     "Checkout & Pay",
//                     style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.orange[700]),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Image.asset(
//                     Slider3,
//                     height: 330,
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Enter your preferred mode of payment. Click Confirm and wait for the products to reach you.",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: Container(
//                       height: 40,
//                       width: 40,
//                       child: TextButton(
//                         onPressed: () {

//                         },
//                         child: Text(
//                           ">",
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.white,
//                             backgroundColor: Colors.orange[700],
//                           ),
//                         ),
//                         style: TextButton.styleFrom(
//                           backgroundColor: Colors.orange[700],
//                           //onSurface: Colors.grey,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:moblie_ui/controller/onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _controller.onboardingPages[index].title,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.orange),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          _controller.onboardingPages[index].imageAsset,
                          height: 400,
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            _controller.onboardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[700]),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
           
            Positioned(
              right: 20,
              bottom: 20,
              child: SizedBox(
                height: 30,
                width: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: _controller.forwardAction,
                  child: Obx(() {
                    return Text(_controller.isLastPage ? '>' : '>');
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
