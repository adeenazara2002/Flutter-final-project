import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/Signin.dart';
import 'package:flutterfinalproject/controllers/signup_controller.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpController signUpController = Get.put(SignUpController());

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 80),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Color.fromRGBO(0, 32, 85, 1),
                  ),
                  Padding(padding: EdgeInsets.only(left: 100)),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 32, 85, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    'Create Account',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 32, 85, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              _buildTextField(
                hintText: 'Albert Ainstain',
                onChanged: signUpController.setName,
              ),
              const SizedBox(height: 10),
              _buildTextField(
                hintText: 'Enter your email',
                onChanged: signUpController.setEmail,
              ),
              const SizedBox(height: 10),
              _buildTextField(
                hintText: 'Enter your password',
                onChanged: signUpController.setPassword,
                obscureText: true,
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  signUpController.signUp(); // Call sign-up method
                },
                child: _buildSignUpButton(),
              ),
              const SizedBox(height: 25),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 140)),
                  Text(
                    'Signup with',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 141, 149, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 100)),
                  Image.asset('assets/images/Social.png'),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 95)),
                  const Text(
                    'Have an Account? ',
                    style: TextStyle(
                      color: Color.fromRGBO(134, 141, 149, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const SignIn()); // Use GetX for navigation
                    },
                    child: const Text(
                      'Sign In ',
                      style: TextStyle(
                        color: Color.fromRGBO(117, 110, 243, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
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

  Widget _buildTextField({
    required String hintText,
    required Function(String) onChanged,
    bool obscureText = false,
  }) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.only(left: 20)),
        Container(
          height: 60,
          width: 310,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color.fromRGBO(117, 110, 243, 1),
            ),
          ),
          child: TextField(
            onChanged: onChanged,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                  color: Color.fromRGBO(0, 32, 85, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 18.0,
                horizontal: 20.0,
              ),
            ),
            style: const TextStyle(
              color: Color.fromRGBO(0, 32, 85, 1),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpButton() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(117, 110, 243, 1),
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(84, 81, 214, 0.8),
            offset: Offset(0, 10),
            blurRadius: 18.0,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 125.0, vertical: 16.0),
      child: const Center(
        child: Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
