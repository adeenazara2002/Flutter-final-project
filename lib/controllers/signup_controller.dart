import 'package:flutterfinalproject/Screens/signIn.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  String _name = '';
  String _email = '';
  String _password = '';

  void setName(String name) {
    _name = name;
  }

  void setEmail(String email) {
    _email = email;
  }

  void setPassword(String password) {
    _password = password;
  }

  void signUp() {
    // Logic to sign up the user
    // You can store the email and password in a local storage or database
    // For simplicity, we'll just print the credentials
    print('User Registered: $_name, $_email, $_password');
    Get.snackbar('Success', 'User Registered Successfully');
    // Optionally, navigate to SignIn screen after successful registration
    Get.to(const SignIn());
  }

  String get email => _email;
  String get password => _password;
}
