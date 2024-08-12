import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class AddNewDeviceScreen extends StatelessWidget {
  const AddNewDeviceScreen({super.key});

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
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Iconsax.arrow_left_2,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  const Text(
                    "Add New Device",
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
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Scan Your QR Code",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "OpenMed",
                            fontSize: 24),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset("assets/images/qr-code.png"),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(scanQRCodeScreen);
                        },
                        child: Container(
                          height: 53,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color(0xff00BFFF),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.qr_code,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Scan QR Code",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "OpenMed",
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(deviceInformationScreen);
                        },
                        child: const Text(
                          "Add New Device, Manually?",
                          style: TextStyle(
                              color: Color(0xff001F3F),
                              fontFamily: "OpenMed",
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
