import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/screens/dashboard/wallet/transfer/screens/transfer-screen-1.dart';

import '../../../../widgets/buttons/buttons.dart';

class TransferMoneyScreen extends StatelessWidget {
  const TransferMoneyScreen({super.key});

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
                    "Transfer Money",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  const Text(
                    "1/2",
                    style: TextStyle(
                        color: Color(0xff7C797A),
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const TransferScreen1()
          ],
        )),
      ),
    );
  }
}