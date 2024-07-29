import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app/app-route-names.dart';

class AddVehicleInfoLoadingScreen extends StatefulWidget {
  const AddVehicleInfoLoadingScreen({super.key});

  @override
  State<AddVehicleInfoLoadingScreen> createState() =>
      _AddVehicleInfoLoadingScreenState();
}

class _AddVehicleInfoLoadingScreenState
    extends State<AddVehicleInfoLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(newVehicleAddedScreen);
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
              "Adding New Vehicle...",
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
