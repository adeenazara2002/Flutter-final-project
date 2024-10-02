import 'package:flutterfinalproject/Views/home_screen.dart';
import 'package:get/get.dart';
import 'signup_controller.dart'; // Ensure to import the SignUpController

class SignInController extends GetxController {
  final SignUpController signUpController = Get.put(SignUpController()); // Retrieve the sign-up controller

  String _email = '';
  String _password = '';

  void setEmail(String email) {
    _email = email;
  }

  void setPassword(String password) {
    _password = password;
  }

  void signIn() {
    // Check if the provided email and password match the registered ones
    if (_email == signUpController.email && _password == signUpController.password) {
      print('Sign In Successful');
      Get.snackbar('Success', 'Welcome Back!');
      Get.to(HomeScreen()); // Navigate to the HomeScreen
    } else {
      print('Invalid credentials');
      Get.snackbar('Error', 'Invalid Email or Password');
    }
  }
}
