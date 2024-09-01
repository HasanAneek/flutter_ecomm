import 'package:bmi/features/screens/login/widgets/form_divider.dart';
import 'package:bmi/features/screens/login/widgets/social_button.dart';
import 'package:bmi/features/screens/login/widgets/login_form.dart';
import 'package:bmi/features/screens/login/widgets/login_header.dart';

import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(2.56, 50.24, 4.24, 5.24),
          child: Column(
            children: [
              //Logo,Title & Subtitle
              LoginHeader(),

              //Form
              LoginForm(),

              //Form Divider
              FormDivider(),
              SizedBox(height: 15),

              //Social Button
              SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

