import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/signIn.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signUp() async {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    if (name.isEmpty || !RegExp(r'^[a-zA-Z\s]+$').hasMatch(name)) {
      Get.snackbar(
          "Error", "Please enter a valid name (letters and spaces only).",
          snackPosition: SnackPosition.TOP);
      return;
    }

    if (email.isEmpty ||
        !RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$').hasMatch(email)) {
      Get.snackbar("Error", "Please enter a valid Gmail address.",
          snackPosition: SnackPosition.TOP);
      return;
    }

    if (password.isEmpty ||
        password.length < 8 ||
        !RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\W_]).+$')
            .hasMatch(password)) {
      Get.snackbar("Error",
          "Password must be at least 8 characters long and include uppercase, lowercase, numbers, and special characters.",
          snackPosition: SnackPosition.TOP);
      return;
    }

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Clear the fields after signup
      nameController.clear();
      emailController.clear();
      passwordController.clear();

      // Show success snackbar
      Get.snackbar("Success", "Account created successfully!",
          snackPosition: SnackPosition.TOP);

      // Navigate to SignIn screen
      Get.off(() => SignIn());
    } catch (e) {
      print(e);
      Get.snackbar("Error", "Sign up failed. Please try again.",
          snackPosition: SnackPosition.TOP);
    }
  }
}
