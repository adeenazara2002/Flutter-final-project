import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/signUp.dart';
import 'package:flutterfinalproject/controllers/sign_in_controller.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: controller.formKey, // Use controller here
          child: Column(
            children: [
              SizedBox(height: 80),
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
                    'Sign In',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 32, 85, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
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
                    'Welcome Back',
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
                    'Please enter your email address',
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
                    'and password for login',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 141, 149, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(height: 30),
              // Email field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: controller.emailController, // Use controller here
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'albert.einstein@gmail.com',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(
                            233, 241, 255, 1), // Border color when not focused
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(233, 241, 255,
                            1), // Border color when the field is focused
                        width: 2.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        // color: Colors.red, // Border color when there's an error
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (value) => controller.validateEmail(value!),
                ),
              ),

              SizedBox(height: 10),
              // Password field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Obx(
                  () => TextFormField(
                    controller: controller.passwordController,
                    obscureText: !controller.passwordVisible.value,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(233, 241, 255,
                              1), // Border color when not focused
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(233, 241, 255,
                              1), // Border color when the field is focused
                          width: 2.0,
                        ),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.passwordVisible.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          controller.passwordVisible
                              .toggle(); // Toggle password visibility
                        },
                      ),
                    ),
                    validator: (value) => controller.validatePassword(value!),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 200)),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 32, 85, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 30),
              // Sign In button
              ElevatedButton(
                onPressed: () {
                  controller.signIn(); // Call signIn method from controller
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
                    'Sign In',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 140)),
                  Text(
                    'SignIn with',
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
                    'Not Registered Yet? ',
                    style: TextStyle(
                      color: Color.fromRGBO(134, 141, 149, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => SignUp());
                    },
                    child: Text(
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
    ));
  }
}
