import 'package:emongolia/Components/CustomAppBar.dart';
import 'package:emongolia/Screens/warning_screen.dart';
import 'package:emongolia/const.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return const WarningScreen();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Const.mainColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'emongolia',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(width: 50),
                Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Const.mainColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Good evening!'),
                    Text(
                      'L.Dashnyam',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '3479813284719827349@e-mongolia.com',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My bichig barimtuud",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text("Renew"),
                      Icon(Icons.refresh),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
