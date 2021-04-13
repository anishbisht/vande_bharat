import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moblie_ui/controller/onboarding_controller.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/utlis/values/app_colors.dart';
import 'package:moblie_ui/Binding/onboarding_binding.dart';

class OnboardingPage extends GetView<OnboardingController> {
  final OnboardingController controller = Get.put(OnboardingController());

  // final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.selectedPageIndex,
                itemCount: controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(color: HexColor('#E5E5E5')),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.onboardingPages[index].title,
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                              color: AppColors.kPrimaryColor),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          controller.onboardingPages[index].imageAsset,
                          height: 300,
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            controller.onboardingPages[index].description,
                            style: TextStyle(
                              color: HexColor('#757575'),
                              fontSize: 20,
                              fontFamily: "Roboto",

                              fontWeight: FontWeight.w400,
                              //color: Colors.grey[700]),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
            Positioned(
              right: 20,
              bottom: 20,
              child: SizedBox(
                height: 35,
                width: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.kPrimaryColor),
                  onPressed: controller.forwardAction,
                  child: Obx(() {
                    return Image.asset(
                        controller.isLastPage ? ArrowImg : ArrowImg);
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
