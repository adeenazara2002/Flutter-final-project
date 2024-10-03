import 'package:get/get.dart';
import '../models/profile_model.dart';

class ProfileController extends GetxController {
  // Static user profile for now
  var profile = ProfileModel(
    name: 'Alvart Ainstain',
    username: '@albart.ainstain',
    avatar: 'Assets/images/Profile.png',  // Add your asset path here
    onGoingProjects: 5,
    totalCompleted: 25,
  ).obs;
}
