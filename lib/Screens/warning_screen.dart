import 'package:emongolia/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WarningScreen extends StatelessWidget {
  const WarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: Get.size.height / 2.5,
          width: Get.size.width - 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.info,
                color: Const.mainColor,
                size: 100,
              ),
              const Text(
                'Log in.',
                style: TextStyle(
                  color: Const.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Gotta login to get a service mf',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Const.mainColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Const.mainColor),
                ),
                child: Center(
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Const.mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
