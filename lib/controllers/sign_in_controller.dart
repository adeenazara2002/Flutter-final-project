import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/settings.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // Define password visibility as an observable
  var passwordVisible = false.obs;

  // Validation logic for email
  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Email is required';
    }
    if (!value.endsWith('@gmail.com')) {
      return 'Please enter a valid gmail.com address';
    }
    return null; // If valid
  }

  // Validation logic for password
  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return 'Password must contain at least one number';
    }
    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }
    return null; // If valid
  }

  // Sign-in method using Firebase Authentication
  void signIn() async {
    if (formKey.currentState!.validate()) {
      Get.off(() => Settings());
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text.trim(),
                password: passwordController.text.trim());
        // Sign in successful
        Get.snackbar('Success', 'Signed in successfully!',
            snackPosition: SnackPosition.TOP
            // backgroundColor: Colors.green,
            // colorText: Colors.white
            );
      } catch (e) {
        // Handle sign-in errors
        Get.snackbar(
          'Error', 'Failed to sign in: $e',
          snackPosition: SnackPosition.TOP,
          // backgroundColor: Colors.red,
          // colorText: Colors.white
        );
      }
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
