import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:gif/gif.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/bottom-sheets/payment-recipet.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class TopUpSuccessScreen {
  show() {
    Get.bottomSheet(
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              )),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 240,
                width: 240,
                child: Stack(
                  children: [
                    Gif(
                        autostart: Autostart.once,
                        placeholder: (context) =>
                            const Center(child: CircularProgressIndicator()),
                        image: const AssetImage("assets/gif/confety.gif")),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Gif(
                          autostart: Autostart.once,
                          placeholder: (context) =>
                              const Center(child: CircularProgressIndicator()),
                          image: const AssetImage("assets/gif/checked.gif")),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            const Text(
              "Transaction Successful",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff030206), fontSize: 16, fontFamily: "Open"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "#5,000.00",
              style: TextStyle(
                  color: Color(0xff001F3F),
                  fontSize: 24,
                  fontFamily: "OpenBold"),
            ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        PaymentRecieptSheet().show();
                      },
                      child:
                          SvgPicture.asset("assets/images/view-reciepts.svg")),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.toNamed(transactionScreen);
                      },
                      child: SvgPicture.asset(
                          "assets/images/view-transaction.svg")),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
            Buttons().authButtons(
              title: "View Receipt",
              action: () {
              }
            ),
            const SizedBox(
              height: 10,
            ),
            Buttons().authButtons(
              title: "Back to Wallet",
              action: () {
                Get.offAllNamed(dashboard);
              }
            ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        isScrollControlled: true,
        isDismissible: false,
        enableDrag: false);
  }
}
