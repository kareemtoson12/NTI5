// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 19:05:33

// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 18:20:00

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/core/styles/colors_manager.dart';
import 'package:nti5/core/styles/styles_manager.dart';
import 'package:nti5/core/widgtes/button_widget.dart';
import 'package:nti5/features/auth/cubit/auth_cubit.dart';
import 'package:nti5/features/auth/cubit/states.dart';
import 'package:nti5/features/auth/widgets/custom_text_form_field.dart';
import 'package:nti5/features/auth/widgets/or_divider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

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
                  Text('Log in ', style: StylesManager.titleText20Style),
                  SizedBox(height: screenHeight * 0.01),
                  CustomTextField(
                    hint: 'email',
                    prefixIcon: Icons.person,
                    controller: emailController,
                  ),

                  CustomTextField(
                    hint: 'password',
                    prefixIcon: Icons.key,
                    controller: passwordController,
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is LoginSuccessState) {
                        Navigator.pushNamed(context, '/home');
                        //show snackBar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Login success'),
                            backgroundColor: Colors.green,
                          ),
                        );

                        if (state is LoginErrorState) {
                          //show snackBar
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Login failed'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      }
                    },
                    builder: (context, state) {
                      final cubit = context.read<AuthCubit>();
                      if (state is SignUpLoadingState) {
                        return Center(child: CircularProgressIndicator());
                      }
                      return ButtonWidget(
                        onpress: () {
                          if (formKey.currentState!.validate()) {
                            cubit.login(
                              emailController.text,
                              passwordController.text,
                            );
                          }
                        },
                        text: 'Login ',
                      );
                    },
                  ),

                  SizedBox(height: screenHeight * 0.02),

                  //didnt have an account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(color: ColorsManager.greyColor),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: ColorsManager.greyColor),
                        ),
                      ),
                    ],
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
