import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 80),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Get.back(); // Use GetX for back navigation
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Color.fromRGBO(0, 32, 85, 1),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 100)),
                  const Text(
                    'Settings',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 32, 85, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildSettingOption('Permission', () {
                // Navigate to Permission screen
                Get.toNamed('/permission'); // Define your route in GetX
              }),
              const SizedBox(height: 20),
              _buildSettingOption('Push Notification', () {
                // Navigate to Push Notification screen
                Get.toNamed('/push-notification');
              }),
              const SizedBox(height: 20),
              _buildSettingOption('Dark Mood', () {
                // Navigate to Dark Mood screen
                Get.toNamed('/dark-mode');
              }),
              const SizedBox(height: 20),
              _buildSettingOption('Security', () {
                // Navigate to Security screen
                Get.toNamed('/security');
              }),
              const SizedBox(height: 20),
              _buildSettingOption('Help', () {
                // Navigate to Help screen
                Get.toNamed('/help');
              }),
              const SizedBox(height: 20),
              _buildSettingOption('Language', () {
                // Navigate to Language screen
                Get.toNamed('/language');
              }),
              const SizedBox(height: 20),
              _buildSettingOption('About Application', () {
                // Navigate to About Application screen
                Get.toNamed('/about');
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingOption(String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 320,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color.fromRGBO(233, 241, 255, 1)),
        ),
        child: Row(
          children: [
            const Padding(padding: EdgeInsets.only(left: 20)),
            Text(
              title,
              style: const TextStyle(
                color: Color.fromRGBO(0, 32, 85, 1),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Color.fromRGBO(0, 32, 85, 1),
            ),
          ],
        ),
      ),
    );
  }
}
