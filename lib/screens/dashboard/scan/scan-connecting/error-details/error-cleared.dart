import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif/gif.dart';
import 'package:vescan/routes/app/app-route-names.dart';

import '../../../../../widgets/buttons/buttons.dart';

class ErrorClearedScreen extends StatelessWidget {
  const ErrorClearedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Error Details Cleared!",
              style: TextStyle(
                  color: Color(0xff001F3F),
                  fontSize: 28,
                  fontFamily: "OpenBold"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "You have cleared all error details from your diagnostic report.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff7C797A), fontSize: 14, fontFamily: "Open"),
            ),
            const SizedBox(
              height: 40,
            ),
            Buttons().authButtons(
                title: "Back to Home",
                action: () {
                  Get.offAllNamed(dashboard);
                }),
          ],
        ),
      ),
    );
  }
}
