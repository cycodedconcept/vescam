import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/wallet/wallet-state-controller.dart';
import 'package:vescan/screens/dashboard/wallet/transfer/screens/transfer-screen-1.dart';

class TransferMoneyScreen extends StatelessWidget {
  const TransferMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WalletStateController>(builder: (controller) {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SafeArea(
              child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        (controller.currentTransferScreen == 1)
                            ? controller.updateCurrentTransferScreen(0)
                            : Get.back();
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
                    Text(
                      "${controller.currentTransferScreen + 1}/2",
                      style: const TextStyle(
                          color: Color(0xff7C797A),
                          fontFamily: "OpenMed",
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              controller.transferViews[controller.currentTransferScreen]
            ],
          )),
        ),
      );
    });
  }
}
