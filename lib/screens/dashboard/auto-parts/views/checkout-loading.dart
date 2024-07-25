import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class CheckoutLoadingScreen extends StatefulWidget {
  const CheckoutLoadingScreen({super.key});

  @override
  State<CheckoutLoadingScreen> createState() => _CheckoutLoadingScreenState();
}

class _CheckoutLoadingScreenState extends State<CheckoutLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(checkoutSuccessScreen);
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
