import 'package:bmi/features/screens/password_config/forget_password.dart';
import 'package:bmi/features/screens/signup/signup.dart';
import 'package:bmi/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [

            //Email
            TextFormField(
              decoration:  const InputDecoration(
                prefixIcon: Icon(Icons.subdirectory_arrow_right),
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye_sharp),
                labelText: "Password",
              ),
            ),
            const SizedBox(height: 5),

            //Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                //Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("Remember Me"),
                  ],
                ),

                //Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text("Forget Password"),
                ),
              ],
            ),

            const SizedBox(height: 30),

            //Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: Text(
                  "Sign In",
                style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () { Get.to(const SignupScreen()); },
                child:  Text("Create Account",
                style: Theme.of(context).textTheme.headlineSmall?.apply(
                  color: Colors.black,
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

