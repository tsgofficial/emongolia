import 'package:emongolia/Controllers/RootController.dart';
import 'package:emongolia/Screens/HomeScreen/HomeScreen.dart';
import 'package:emongolia/Screens/MailScreen/MailScreen.dart';
import 'package:emongolia/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:emongolia/Screens/ServiceScreen/ServiceScreen.dart';
import 'package:emongolia/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RootScreen extends StatelessWidget {
  RootScreen({super.key});

  final _controller = Get.put(RootController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => Stack(
          children: [
            IndexedStack(
              index: _controller.selectedIndex.value,
              children: const [
                HomeScreen(),
                ServiceScreen(),
                MailScreen(),
                ProfileScreen(),
              ],
            ),
            // AnimatedPositioned(
            //   duration: const Duration(milliseconds: 300),
            //   curve: Curves.easeInOut,
            //   left: _controller.containerPosition.value,
            //   bottom: 0,
            //   child: GestureDetector(
            //     onTap: () {},
            //     child: Container(
            //       color: Colors.blue,
            //       width: MediaQuery.of(context).size.width / 20,
            //       height: 3,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            child: BottomNavigationBar(
              landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
              backgroundColor: Colors.white,
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
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Const.mainColor,
        shape: const CircleBorder(eccentricity: 1),
        child: const Icon(
          Icons.qr_code,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
