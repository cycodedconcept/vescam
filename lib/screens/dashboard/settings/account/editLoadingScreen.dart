import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class EditLoadingScreen extends StatefulWidget {
  const EditLoadingScreen({super.key});

  @override
  State<EditLoadingScreen> createState() => _EditLoadingScreenState();
}

class _EditLoadingScreenState extends State<EditLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(editSuccessfulScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
