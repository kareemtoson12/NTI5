// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 18:20:00

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nti5/core/styles/colors_manager.dart';
import 'package:nti5/core/styles/styles_manager.dart';
import 'package:nti5/core/widgtes/button_widget.dart';
import 'package:nti5/features/auth/widgets/custom_text_form_field.dart';
import 'package:nti5/features/auth/widgets/or_divider.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text('Sign up ', style: StylesManager.titleText20Style),
                  SizedBox(height: screenHeight * 0.01),
                  CustomTextField(
                    hint: 'email',
                    prefixIcon: Icons.person,
                    controller: emailController,
                  ),
                  CustomTextField(
                    hint: 'name',
                    prefixIcon: Icons.person,
                    controller: nameController,
                  ),
                  CustomTextField(
                    hint: 'password',
                    prefixIcon: Icons.key,
                    controller: passwordController,
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  ButtonWidget(
                    onpress: () {
                      if (kDebugMode) {
                        print('login');
                      }
                    },
                    text: 'Sign up',
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  OrDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
