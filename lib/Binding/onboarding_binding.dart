import 'package:get/get.dart';
import 'package:moblie_ui/controller/bottom_nav_controller.dart';
import 'package:moblie_ui/controller/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(
      () => OnboardingController(),
    );
  }
}

