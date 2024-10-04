import 'package:get/get.dart';

class EditProfileController extends GetxController {
  var name = 'Alvart Ainstain'.obs;
  var email = 'albart.ainstain@gmail.com'.obs;
  var username = '@albart.ainstain'.obs;
  var phoneNumber = '+010 2120 112312'.obs;

  // Save functionality for editing profile (can be updated later)
  void saveProfile() {
    print("Profile saved!");
  }

  // Method to change the profile picture (in future, integrate with an image picker)
  void changeProfilePicture() {
    print("Change Profile Picture clicked");
  }
}
