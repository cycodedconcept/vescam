import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif/gif.dart';
import '../../../../routes/app/app-route-names.dart';
import '../../../../widgets/buttons/buttons.dart';

class AddVehicleSuccessScreen extends StatelessWidget {
  const AddVehicleSuccessScreen({super.key});

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
              "New Vehicle Added!",
              style: TextStyle(
                  color: Color(0xff001F3F),
                  fontSize: 28,
                  fontFamily: "OpenBold"),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: "You have successfully added a new vehicle.\n",
                  style: TextStyle(
                      color: Color(0xff7C797A),
                      fontSize: 14,
                      fontFamily: "Open"),
                  children: [
                    TextSpan(
                      text: "(Volvo XC40)",
                      style: TextStyle(
                          color: Color(0xff00BFFF),
                          fontSize: 14,
                          fontFamily: "Open"),
                    )
                  ]),
            ),
            const SizedBox(
              height: 40,
            ),
            Buttons().authButtons(
                title: "Go Back Home",
                action: () {
                  Get.offAllNamed(dashboard);
                })
          ],
        ),
      ),
    );
  }
}
