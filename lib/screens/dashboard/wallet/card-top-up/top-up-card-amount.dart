import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';

import '../../../../widgets/buttons/buttons.dart';

class TopUpAmountScreen extends StatelessWidget {
  const TopUpAmountScreen({super.key});

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
                    "Top-Up with Card/Account",
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
                        "Top-Up your vescan wallet with your debit card or directly from your account",
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
                              "Amount",
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
                                hintText: "₦100.00 - ₦2,000,000.00",
                                hintStyle: const TextStyle(
                                    color: Color(0xff7C797A),
                                    fontFamily: "Inter"),
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
                          title: "Next",
                          action: () {
                            Get.toNamed(topUpAddDetailsScreen);
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
