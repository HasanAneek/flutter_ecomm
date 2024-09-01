import 'package:bmi/features/screens/login/login.dart';
import 'package:bmi/features/screens/signup/success_signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              //Image
              const Center(
                child: Image(
                    image: AssetImage('assets/images/Man and woman giving each other a high five to celebrate success.png'),
                    width: 300,
                ),
              ),
              const SizedBox(height: 32),

              //Title & Subtitle
              Text(
                "Verify Your Email Address",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              Text(
                "support@demo.com",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 20),
              Text(
                "Congrats! Your email address is verified.Stay connected with us for exciting updates and opportunities.",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const SuccessSignUpScreen()),
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Resend Email"),
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

