import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/Signin.dart';
import 'package:flutterfinalproject/Screens/signUp.dart';
import 'package:flutterfinalproject/Services/firebaseFunctions.dart';
import 'package:flutterfinalproject/controllers/signup_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
              SizedBox(
                height: 80,
              ),
              Row(
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
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 280)),
                  Image.asset('assets/images/yellowBall.png')
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 320)),
                  Image.asset('assets/images/purpleBall.png')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 310)),
                  Image.asset('assets/images/pinkBall.png')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
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
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    'Please enter your information and',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 141, 149, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    'create your account',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 141, 149, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Container(
                    height: 60,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color.fromRGBO(117, 110, 243, 1),
                      ),
                    ),
                    child: TextField(
                      controller: signUpController.nameController,
                      decoration: InputDecoration(
                        hintText: 'Albert Ainstain',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(0, 32, 85, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 18.0,
                          horizontal: 20.0,
                        ),
                      ),
                      style: TextStyle(
                        color: Color.fromRGBO(0, 32, 85, 1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Container(
                    height: 60,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color.fromRGBO(233, 241, 255, 1),
                      ),
                    ),
                    child: TextField(
                      controller: signUpController.emailController,
                      decoration: InputDecoration(
                        hintText: 'Enter your mail',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(134, 141, 149, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 18.0,
                          horizontal: 20.0,
                        ),
                      ),
                      style: TextStyle(
                        color: Color.fromRGBO(134, 141, 149, 1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Container(
                    height: 60,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color.fromRGBO(233, 241, 255, 1),
                      ),
                    ),
                    child: TextField(
                      controller: signUpController.passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(134, 141, 149, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 18.0,
                          horizontal: 20.0,
                        ),
                      ),
                      style: TextStyle(
                        color: Color.fromRGBO(134, 141, 149, 1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 27)),
                  ElevatedButton(
                    onPressed: () {
                      signUpController
                          .signUp(); // Call the signUp method from controller
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(117, 110, 243, 1),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 95.0,
                        vertical: 16.0,
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
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
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 100)),
                  Image.asset('assets/images/Social.png'),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 95)),
                  Text(
                    'Have an Account? ',
                    style: TextStyle(
                      color: Color.fromRGBO(134, 141, 149, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => SignIn());
                    },
                    child: Text(
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
}
