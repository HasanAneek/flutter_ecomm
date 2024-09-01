import 'package:bmi/features/screens/password_config/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(
              "Forget Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text(
              "No worries, we're here to help! Resetting your password is quick and easy. Just follow the link we've sent to your email, and you'll be back on track in no time.",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 60),

            //Text Field
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: 30),

            //Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text("Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
