import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';

import '../../../../widgets/buttons/buttons.dart';

class BankOtpVerificationScreen extends StatelessWidget {
  const BankOtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Icon(
                      Iconsax.arrow_left_2,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  Text(
                    "OTP Verification",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  Icon(
                    Iconsax.notification,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Either your bank will send you an SMS with a one time code or you have to enter the code from your hardware token to verify the transaction",
                        style:
                            TextStyle(color: Color(0xff030206), fontSize: 16),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Code from SMS",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 14,
                                  fontFamily: "OpenMed"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter OTP",
                                hintStyle: const TextStyle(
                                    color: Color(0xff7C797A),
                                    fontFamily: "Open"),
                                fillColor: const Color(0xffF8FAFB),
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0xffFF0022), width: 1.5)),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Buttons().authButtons(
                          title: "Complete Verification",
                          action: () {
                            // Get.toNamed(topUpAddDetailsScreen);
                          })
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
