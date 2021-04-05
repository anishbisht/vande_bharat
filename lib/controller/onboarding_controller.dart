import 'package:flutter/material.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/onboardingModel.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:moblie_ui/pages/homePage.dart';
import 'package:moblie_ui/pages/signInEmailNumberPage.dart';
import 'package:moblie_ui/pages/signInPage.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      Get.to(() => SingInEmailPasswordPage());
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(Slider1, 'Search Your Product',
        'Type the name of the product you wish to purchase in the search box. Alternatively, click onto to a product you wish to buy.'),
    OnboardingInfo(Slider2, 'Add To Cart',
        "Select, collect and manage your products with the 'Add to Cart' option to proceed with your shopping"),
    OnboardingInfo(Slider3, 'Checkout & Pay',
        'Enter your preferred mode of payment. Click Confirm and wait for the products to reach you.')
  ];
}
