import 'package:flutter/material.dart';
import 'package:touch_me/widgets/register_button.dart';

import '../widgets/auth_textfield.dart';
import '../widgets/sociallogin_button.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: screenHeight * 0.1,
            left: screenWidth * 0.07,
            right: screenWidth * 0.07,
            top: screenHeight * 0.1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: screenHeight * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/touchme.png'),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                'Create an Account',
                style: TextStyle(
                  color: const Color(0xFF8D2E55),
                  fontSize: screenHeight * 0.035,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              const AuthInputField(
                icon: 'assets/images/Group 2.png',
                label: 'Username or Email',
                isPassword: false,
              ),
              SizedBox(height: screenHeight * 0.025),
              const AuthInputField(
                icon: 'assets/images/Group 2.png',
                label: 'Password',
                isPassword: true,
              ),
              SizedBox(height: screenHeight * 0.025),
              const AuthInputField(
                icon: 'assets/images/Group 2.png',
                label: 'Confirm Password',
                isPassword: true,
              ),
              SizedBox(height: screenHeight * 0.04),
              RegisterButton(
                buttonName: "Create Account",
                onPressed: () {},
              ),
              SizedBox(height: screenHeight * 0.04),
              Text(
                '- Or Continue -',
                style: TextStyle(
                  color: const Color(0xFFB5A7D6),
                  fontSize: screenHeight * 0.018,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              const SocialLoginButton(),
              SizedBox(height: screenHeight * 0.035),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I Already Have an Account',
                    style: TextStyle(
                      fontSize: screenHeight * 0.018,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: const Color(0xFF8D2E55),
                        fontSize: screenHeight * 0.018,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
