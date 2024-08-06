import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class TopUpLoadingScreen extends StatefulWidget {
  const TopUpLoadingScreen({super.key});

  @override
  State<TopUpLoadingScreen> createState() => _TopUpLoadingScreenState();
}

class _TopUpLoadingScreenState extends State<TopUpLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(topUpSuccessScreen);
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
              "Transaction Loading...",
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
