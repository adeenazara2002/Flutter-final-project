import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Color.fromRGBO(0, 32, 85, 1),
                ),
                Padding(padding: EdgeInsets.only(left: 100)),
                Text(
                  'Settings',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 32, 85, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color.fromRGBO(233, 241, 255, 1)),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Permission',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 32, 85, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(padding: EdgeInsets.only(left: 180)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color.fromRGBO(0, 32, 85, 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color.fromRGBO(233, 241, 255, 1)),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Push Notification',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 32, 85, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(padding: EdgeInsets.only(left: 130)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color.fromRGBO(0, 32, 85, 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color.fromRGBO(233, 241, 255, 1)),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Dark Mood',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 32, 85, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(padding: EdgeInsets.only(left: 180)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color.fromRGBO(0, 32, 85, 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color.fromRGBO(233, 241, 255, 1)),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Security',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 32, 85, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(padding: EdgeInsets.only(left: 200)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color.fromRGBO(0, 32, 85, 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color.fromRGBO(233, 241, 255, 1)),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Help',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 32, 85, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(padding: EdgeInsets.only(left: 220)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color.fromRGBO(0, 32, 85, 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color.fromRGBO(233, 241, 255, 1)),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Language',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 32, 85, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(padding: EdgeInsets.only(left: 180)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color.fromRGBO(0, 32, 85, 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color.fromRGBO(233, 241, 255, 1)),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'About Application',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 32, 85, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(padding: EdgeInsets.only(left: 120)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color.fromRGBO(0, 32, 85, 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
