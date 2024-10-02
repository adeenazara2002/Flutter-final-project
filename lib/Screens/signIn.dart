import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/signUp.dart';
import 'package:flutterfinalproject/Views/home_screen.dart';
import 'package:flutterfinalproject/controllers/sign_in_controller.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final SignInController signInController = Get.put(SignInController());

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
                    'Sign In',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 32, 85, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
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
                      onChanged: signInController.setEmail,
                      decoration: InputDecoration(
                        hintText: 'albart.ainstain@gmail.com',
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
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  Container(
                    height: 60,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromRGBO(233, 241, 255, 1),
                      ),
                    ),
                    child: TextField(
                      onChanged: signInController.setPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(134, 141, 149, 1),
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
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  signInController.signIn(); // Call signIn method from the controller
                },
                child: _buildSignInButton(),
              ),
              const SizedBox(height: 25),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 140)),
                  Text(
                    'Login with',
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
                    'Don’t have an account? ',
                    style: TextStyle(
                      color: Color.fromRGBO(134, 141, 149, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const SignUp()); // Navigate to SignUp screen
                    },
                    child: const Text(
                      'Sign Up ',
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

  Widget _buildSignInButton() {
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
          'Sign In',
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
