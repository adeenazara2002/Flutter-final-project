import 'package:flutter/material.dart';
import 'package:flutterfinalproject/controllers/edit_profile_controller.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  final EditProfileController controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Center(child: Text('Edit Profile')),
        actions: [
          TextButton(
            onPressed: () {
              controller.saveProfile();
            },
            child: Text(
              'Save',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),

              // Profile Picture with Camera Icon
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/Profile.png'), // Example image
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          controller.changeProfilePicture();
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 15,
                          child: Icon(
                            Icons.camera_alt,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              // Name Input
              Text(
                'Name',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Obx(() => TextFormField(
                    initialValue: controller.name.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    onChanged: (value) {
                      controller.name.value = value;
                    },
                  )),

              SizedBox(height: 20),

              // Email Input
              Text(
                'Email',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Obx(() => TextFormField(
                    initialValue: controller.email.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    onChanged: (value) {
                      controller.email.value = value;
                    },
                  )),

              SizedBox(height: 20),

              // Username Input
              Text(
                'Username',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Obx(() => TextFormField(
                    initialValue: controller.username.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    onChanged: (value) {
                      controller.username.value = value;
                    },
                  )),

              SizedBox(height: 20),

              // Phone Number Input
              Text(
                'Number',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Obx(() => TextFormField(
                    initialValue: controller.phoneNumber.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    onChanged: (value) {
                      controller.phoneNumber.value = value;
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
