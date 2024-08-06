import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif/gif.dart';

import '../../../../routes/app/app-route-names.dart';
import '../../../../widgets/bottom-sheets/top-up-reciept.dart';
import '../../../../widgets/buttons/buttons.dart';

class TopUpSuccessScreen extends StatelessWidget {
  const TopUpSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const Text(
              "Transaction Successful",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff030206), fontSize: 16, fontFamily: "Open"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "#5,000.00",
              style: TextStyle(
                  color: Color(0xff001F3F),
                  fontSize: 24,
                  fontFamily: "OpenBold"),
            ),
            const SizedBox(
              height: 50,
            ),
            Buttons().authButtons(
                title: "View Receipt",
                action: () {
                  TopUpRecieptSheet().show();
                }),
            const SizedBox(
              height: 10,
            ),
            Buttons().authButtons(
                title: "Back to Wallet",
                action: () {
                  Get.offAllNamed(dashboard);
                }),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
