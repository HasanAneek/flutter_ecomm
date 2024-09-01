import 'package:bmi/features/screens/signup/verify_email.dart';
import 'package:bmi/features/screens/signup/widgets/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              //First Name
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "First Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              //Last Name
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Last Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          //Username
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "User Name",
              prefixIcon: Icon(Iconsax.edit),
            ),
          ),
          const SizedBox(height: 20),
          //Email
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: 20),
          //Phone Number
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Phone Number",
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          //Terms & Condition Check
          const TermsAndCondition(),

          const SizedBox(
            height: 20,
          ),

          //Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}

