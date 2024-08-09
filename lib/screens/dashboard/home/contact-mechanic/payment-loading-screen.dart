import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class PaymentLoadingScreen extends StatefulWidget {
  const PaymentLoadingScreen({super.key});

  @override
  State<PaymentLoadingScreen> createState() => _PaymentLoadingScreenState();
}

class _PaymentLoadingScreenState extends State<PaymentLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(inspectionSuccessScreen);
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
