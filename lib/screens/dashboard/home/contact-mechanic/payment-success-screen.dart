import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:gif/gif.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

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
              height: 40,
            ),
            const Text(
              "Thank You!",
              style: TextStyle(
                  color: Color(0xff001F3F),
                  fontSize: 28,
                  fontFamily: "OpenBold"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Your order has successfully been placed",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff7C797A), fontSize: 14, fontFamily: "Open"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Estimated Delivery in 30 mins",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff7C797A),
                  fontSize: 18,
                  fontFamily: "OpenBold"),
            ),
            const SizedBox(
              height: 40,
            ),
            Buttons().authButtons(
                title: "Done",
                action: () {
                  Get.offAllNamed(dashboard);
                }),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                // Get.toNamed(messageAMechanicScreen);
              },
              child: const Text(
                "Track Order",
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff00BFFF),
                    color: Color(0xff00BFFF),
                    fontSize: 18,
                    fontFamily: "OpenBold"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
