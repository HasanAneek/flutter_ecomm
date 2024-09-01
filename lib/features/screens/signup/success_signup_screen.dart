import 'package:bmi/features/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUpScreen extends StatelessWidget {
  const SuccessSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              
              //Image
              const Center(
                child: Image(
                    image: AssetImage("assets/images/Young man beating spam with a baseball bat.png"),
                    width: 300,
                  height: 400,
                ),
              ),

              //Title, Subtitle
              Text("Your Account Successfully Created!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text("Welcome to your ultimate shopping destination.Keep in touch with us for better opportunity.",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),

              //Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text("Continue"),
                ),
              )
            ],
          ),
        ) ,

      ),
    );
  }
}
