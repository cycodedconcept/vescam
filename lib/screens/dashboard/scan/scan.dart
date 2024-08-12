import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/ecommerce/ecommerce-state-controller.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

import '../../../routes/app/app-route-names.dart';

class ScanView extends StatelessWidget {
  ScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Text(
                    "Vehicle Diagnostic",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(notificationScreen);
                    },
                    child: const Icon(
                      Iconsax.notification,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: const Color(0xff001F3F),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/vehicle-diagnostic.svg"),
                  const SizedBox(
                    height: 40,
                  ),
                  Buttons().onboardingButtons(
                      title: "Start Scanning",
                      action: () {
                        Get.toNamed(scanConnectingScreen);
                      })
                ],
              ),
            )),
          ],
        )),
      ),
    );
  }
}
