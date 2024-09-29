import 'package:get/get.dart';
import '../models/chat_model.dart';

class ChatController extends GetxController {

  var chatList = <ChatModel>[
    ChatModel(name: 'Jenny Alxinder', status: 'Active now', avatar: 'Assets/images/Profile.png'),
    ChatModel(name: 'Team Align', status: 'Active 1h ago', avatar: 'Assets/images/profile.png'),
    ChatModel(name: 'Alex Avishek', status: 'Active 1h ago', avatar: 'Assets/images/Profile.png'),
    ChatModel(name: 'Jafor Dicrose', status: 'Active 1h ago', avatar: 'Assets/images/Profile.png'),
  ].obs;
}
