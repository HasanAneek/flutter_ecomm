import 'package:bmi/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 3,
      bottom: 2,
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        child: const Icon(
          Icons.arrow_circle_right,
          size: 30,
        ),
      ),
    );
  }
}
