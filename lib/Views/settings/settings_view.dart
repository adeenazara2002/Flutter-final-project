import 'package:flutter/material.dart';
import 'package:flutterfinalproject/controllers/theme_controller.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Settings'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // Permission Switch
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1), // Border color and width
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              title: Text('Permission'),
              trailing: Switch(
                value: true, // Add functionality later
                onChanged: (value) {
                  // Handle permission toggling
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Push Notification Switch
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1), // Border color and width
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              title: Text('Push Notification'),
              trailing: Switch(
                value: false, // Add functionality later
                onChanged: (value) {
                  // Handle push notification toggling
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // Dark Mode Switch
            Obx(() => ListTile(
                  title: Text('Dark Mode'),
                  trailing: Switch(
                    value: themeController.isDarkMode.value,
                    onChanged: (value) {
                      themeController.toggleTheme();
                    },
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.grey.shade200,
                        width: 1), // Border color and width
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                )),
            SizedBox(
              height: 10,
            ),

            // Security
            ListTile(
              title: Text('Security'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to security settings screen
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1), // Border color and width
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // Help
            ListTile(
              title: Text('Help'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to help screen
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1), // Border color and width
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // Language
            ListTile(
              title: Text('Language'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to language settings screen
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1), // Border color and width
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // About Application
            ListTile(
              title: Text('About Application'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to about application screen
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1), // Border color and width
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
            ),
          ],
        ),
      ),
    );
  }
}
