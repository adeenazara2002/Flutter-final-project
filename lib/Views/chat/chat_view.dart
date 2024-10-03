import 'package:flutter/material.dart';
import 'package:flutterfinalproject/controllers/chat_controller.dart';
import 'package:get/get.dart';


class ChatView extends StatelessWidget {
  final ChatController controller = Get.put(ChatController());

   ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Chat'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_outlined,color: Colors.grey,),
                hintText: 'Search',hintStyle: const TextStyle(color: Colors.grey),
               enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Colors.grey.shade300), 
      ),
      
      
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.purple), 
      ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Obx(() => ListView.separated(
                  itemCount: controller.chatList.length,
                  separatorBuilder: (BuildContext context, int index) => Divider(
                color: Colors.grey.shade300,
                thickness: 1,
        
                endIndent: 10,
              ),
                  itemBuilder: (context, index) {
                    var chat = controller.chatList[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(chat.avatar),
                        radius: 25,
                      ),
                      title: Text(chat.name),
                      subtitle: Text(chat.status),
                      trailing: IconButton(
                        icon: const Icon(Icons.camera_alt_outlined, color: Colors.grey,),
                        onPressed: () {},
                      ),
                    );
                  },
                )),
          ),
        ],
      ),
      
    );
  }
}
