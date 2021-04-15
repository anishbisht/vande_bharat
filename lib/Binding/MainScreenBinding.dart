import 'package:get/get.dart';
import 'package:moblie_ui/controller/bottom_nav_controller.dart';

class MainscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainscreenController>(() => MainscreenController());
  }
}
