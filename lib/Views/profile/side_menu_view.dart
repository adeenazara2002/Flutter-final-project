import 'package:flutter/material.dart';
import 'package:flutterfinalproject/controllers/side_menu_controller';
import 'package:get/get.dart';


class SideMenuScreen extends StatelessWidget {
  final SideMenuController controller = Get.put(SideMenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Close Button (Top Left)
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    // Close the menu (or navigate back)
                    Navigator.of(context).pop();
                  },
                ),
              ),

              // Profile Section
              Center(
                child: Column(
                  children: [
                    // Profile Picture
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/Profile.png'), // Example image
                    ),
                    SizedBox(height: 10),

                    // Username and Handle
                    Obx(() => Text(
                          controller.username.value,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Obx(() => Text(
                          controller.userHandle.value,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )),

                    // View Profile Button
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.white),
                      onPressed: () {
                        // Navigate to the profile page
                      },
                      child: Text('View Profile'),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // Workspace Section
              Text(
                'Workspace',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 7),

              // Workspace Card
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Text(controller.workspaceName.value)),
                    ElevatedButton(
                      onPressed: () {
                        // Invite functionality
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.white),
                      child: Text('Invite'),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // Manage Section
              Text(
                'Manage',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 20),

              // Team, Labels, Task, Member Cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildManageCard('Team', controller.teamCount),
                  _buildManageCard('Labels', controller.labelCount),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildManageCard('Task', controller.taskCount),
                  _buildManageCard('Member', controller.memberCount),
                ],
              ),

              // Replace Spacer with SizedBox to avoid layout issue
              SizedBox(height: 40),

              // Logout Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.logout();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 12, 69, 116),
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Log Out', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to create the "Manage" cards
  Widget _buildManageCard(String title, RxInt count) {
    return Obx(() => Container(
          width: 150,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade200)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    style: TextStyle(),
                  ),
                  Text('${count.value}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ],
              ),
            ],
          ),
        ));
  }
}
