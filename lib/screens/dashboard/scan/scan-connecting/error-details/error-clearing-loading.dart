import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vescan/routes/app/app-route-names.dart';


class ErrorClearingLoadingScreen extends StatefulWidget {
  const ErrorClearingLoadingScreen({super.key});

  @override
  State<ErrorClearingLoadingScreen> createState() => _ErrorClearingLoadingScreenState();
}

class _ErrorClearingLoadingScreenState extends State<ErrorClearingLoadingScreen> {


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(errorClearedScreen);
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
              "Clearing Error Details",
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