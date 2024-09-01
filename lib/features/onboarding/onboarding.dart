import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/onboarding_controller.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: "assets/images/guy in a sweatshirt with binoculars.png",
                title: "Are you Looking Something?",
                subTitle:
                    "Welcome to the world of limitless choices-your perfect product awaits.",
              ),
              OnBoardingPage(
                  image:
                      "assets/images/man in a cap with a box in his hands.png",
                  title: "Are you Looking Something?",
                  subTitle:
                      "Welcome to the world of limitless choices-your perfect product awaits."),
              OnBoardingPage(
                image:
                    "assets/images/Boy watching education videos and study at home .png",
                title: "Are you Looking Something?",
                subTitle:
                    "Welcome to the world of limitless choices-your perfect product awaits.",
              ),
            ],
          ),

          //Skip Button
          const OnBoardingSkip(),
          //Dot Navigation Smooth Page Indicator
          const OnBoardingDotNavigation(),
          //Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
