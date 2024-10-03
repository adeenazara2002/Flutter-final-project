// import 'package:get/get.dart';
// import '../models/chat_model.dart';

// class ChatController extends GetxController {

//   var chatList = <ChatModel>[
//     ChatModel(name: 'Jenny Alxinder', status: 'Active now', avatar: 'Assets/images/Profile.png'),
//     ChatModel(name: 'Team Align', status: 'Active 1h ago', avatar: 'Assets/images/profile.png'),
//     ChatModel(name: 'Alex Avishek', status: 'Active 1h ago', avatar: 'Assets/images/Profile.png'),
//     ChatModel(name: 'Jafor Dicrose', status: 'Active 1h ago', avatar: 'Assets/images/Profile.png'),
//   ].obs;
// }
import 'package:flutterfinalproject/models/chat_model.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  // Simulated chat data
  var chatList = <ChatModel>[].obs;

  @override
  void onInit() {
    // Initialize with some sample chat data
    chatList.assignAll([
      ChatModel(name: 'John Doe', avatar: 'assets/avatar1.png', status: 'Hey there!'),
      ChatModel(name: 'Jane Smith', avatar: 'assets/avatar2.png', status: 'Busy'),
      ChatModel(name: 'Emily Johnson', avatar: 'assets/avatar3.png', status: 'At work'),
    ]);
    super.onInit();
  }
}
