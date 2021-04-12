

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:moblie_ui/controller/onboarding_controller.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/utlis/values/app_colors.dart';

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
                              color: AppColors.kPrimaryColor),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          _controller.onboardingPages[index].imageAsset,
                          height: 300,
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
                height: 35,
                width: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.kPrimaryColor),
                  onPressed: _controller.forwardAction,
                  child: Obx(() {
                    return Image.asset(
                        _controller.isLastPage ? ArrowImg : ArrowImg);
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
