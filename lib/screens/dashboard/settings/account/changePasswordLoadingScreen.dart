import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class ChangePasswordLoadingScreen extends StatefulWidget {
  const ChangePasswordLoadingScreen({super.key});

  @override
  State<ChangePasswordLoadingScreen> createState() => _ChangePasswordLoadingScreenState();
}

class _ChangePasswordLoadingScreenState extends State<ChangePasswordLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(passwordChangedSuccessScreen);
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
