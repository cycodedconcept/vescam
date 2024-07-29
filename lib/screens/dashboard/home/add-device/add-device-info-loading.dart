import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app/app-route-names.dart';

class AddDeviceLoadingScreen extends StatefulWidget {
  const AddDeviceLoadingScreen({super.key});

  @override
  State<AddDeviceLoadingScreen> createState() => _AddDeviceLoadingScreenState();
}

class _AddDeviceLoadingScreenState extends State<AddDeviceLoadingScreen> {


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(newDeviceAddedScreen);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Adding New Device...",
              style: TextStyle(
                  color: Color(0xff030206),
                  fontSize: 14,
                  fontFamily: "OpenMed"),
            ),
          ],
        ),
      ),
    );
  }
}