import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:gif/gif.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({super.key});

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
            const Text(
              "Congratulations!",
              style: TextStyle(
                  color: Color(0xff001F3F),
                  fontSize: 28,
                  fontFamily: "OpenBold"),
            ),
            const SizedBox(
              height: 40,
            ),
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
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: "Your account has been successfully\ncreated.",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff7C797A),
                      fontFamily: "Open"),
                  children: [
                    TextSpan(
                      text: " Welcome to Vescan!",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff7C797A),
                          fontFamily: "OpenMed"),
                    )
                  ]),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "You can now explore all the features and benefits that our app offers. Get ready to experience seamless vehicle diagnostics, quick access to spare parts, and efficient service requests.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff7C797A), fontSize: 14, fontFamily: "Open"),
            ),
            const SizedBox(
              height: 40,
            ),
            Buttons().authButtons(
                title: "Continue",
                action: () {
                  Get.offAllNamed(signUpVerify);
                })
          ],
        ),
      ),
    );
  }
}
