import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../routes/app/app-route-names.dart';

class GeneratingOtherInfoScreen extends StatefulWidget {
  const GeneratingOtherInfoScreen({super.key});

  @override
  State<GeneratingOtherInfoScreen> createState() => _GeneratingOtherInfoScreenState();
}

class _GeneratingOtherInfoScreenState extends State<GeneratingOtherInfoScreen> {


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(deviceInformationScreen2);
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
              "Generating Other Device Info...",
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