import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';

import '../../../../widgets/buttons/buttons.dart';

class SelectBankScreen extends StatelessWidget {
  const SelectBankScreen({super.key});

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
                    child: const Icon(
                      Iconsax.arrow_left_2,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  const Text(
                    "Select Bank",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  const Icon(
                    Iconsax.notification,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: "Search Bank Name",
                  suffixIcon: const Icon(
                    IconlyLight.search,
                    color: Color(0xffADADAD),
                  ),
                  hintStyle: const TextStyle(
                      color: Color(0xffADADAD), fontFamily: "OpenMed"),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color(0xffF1F1F1), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color(0xffF1F1F1), width: 1)),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
