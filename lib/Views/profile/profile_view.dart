import 'package:flutter/material.dart';
import 'package:flutterfinalproject/controllers/profile_controller.dart';
import 'package:get/get.dart';


class ProfileView extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());
   ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Obx(() => Column(
        children: [
          const SizedBox(height: 20),
        
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(controller.profile.value.avatar),
          ),
          const SizedBox(height: 10),
          
          Text(
            controller.profile.value.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            controller.profile.value.username,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
    
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
               backgroundColor: Colors.white
            ),
            child: const Text('Edit'),
          ),
          const SizedBox(height: 20),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Icon(Icons.check_box_outlined,color: Colors.grey),
                    Text(
                      controller.profile.value.onGoingProjects.toString(),
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text('On Going', style: TextStyle(color:Colors.grey),),
                  ],
                ),
                const VerticalDivider(color: Colors.grey, thickness: 1),
                Column(
                  children: [
                    const Icon(Icons.check_box_outlined,color: Colors.grey),

                    Text(
                      controller.profile.value.totalCompleted.toString(),
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text('Total Complete',style: TextStyle(color:Colors.grey),),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
      
          Expanded(
            child: ListView(
              children: [
                OptionItem( label: 'My Projects', onTap: () {}),
                OptionItem(label: 'Join a Team', onTap: () {}),
                OptionItem( label: 'Settings', onTap: () {
                  
                }),
                OptionItem( label: 'My Task', onTap: () {}),
              ],
            ),
          ),
        ],
      )),
      
    );
  }
}

// Widget for the options list in the profile view
class OptionItem extends StatelessWidget {

  final String label;
  final VoidCallback onTap;

  const OptionItem({super.key,  required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
    
      title: Text(label),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
