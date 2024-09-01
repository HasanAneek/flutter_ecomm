import 'package:bmi/features/screens/login/widgets/form_divider.dart';
import 'package:bmi/features/screens/login/widgets/social_button.dart';
import 'package:bmi/features/screens/signup/widgets/signup_form.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
               Text(
                "Let's Create Your Account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 40),

              //Form
              const SignUpForm(),
              const SizedBox(height: 20),
              
              //Form Divider
              const FormDivider(),
              const SizedBox(height: 15),

              //Social Buttons
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

