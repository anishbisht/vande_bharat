import 'package:get/get.dart';
import 'package:moblie_ui/controller/onboarding_controller.dart';


class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(
      () => OnboardingController(),
    );
  }
}
