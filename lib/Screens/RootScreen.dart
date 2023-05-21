import 'package:emongolia/Controllers/RootController.dart';
import 'package:emongolia/Screens/HomeScreen/HomeScreen.dart';
import 'package:emongolia/Screens/MailScreen/MailScreen.dart';
import 'package:emongolia/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:emongolia/Screens/RequestScreen/RequestScreen.dart';
import 'package:emongolia/Screens/ServiceScreen/ServiceScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RootScreen extends StatelessWidget {
  RootScreen({super.key});

  final _controller = Get.put(RootController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            IndexedStack(
              index: _controller.selectedIndex.value,
              children: const [
                HomeScreen(),
                ServiceScreen(),
                RequestScreen(),
                MailScreen(),
                ProfileScreen(),
              ],
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: _controller.containerPosition.value,
              bottom: 0,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width / 5,
                  height: 3,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _controller.selectedIndex.value,
          onTap: _controller.changePage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Нүүр',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_sharp),
              label: 'Үйлчилгээ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Хүсэлтүүд',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Имэйл',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профайл',
            ),
          ],
        ),
      ),
    );
  }
}
