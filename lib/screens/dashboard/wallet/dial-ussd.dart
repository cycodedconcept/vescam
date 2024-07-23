import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/route_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class DialUssdCodeScreen extends StatelessWidget {
  const DialUssdCodeScreen({super.key});

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
                    "Dial USSD Code",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  Icon(
                    IconlyLight.notification,
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
                      RichText(
                        text: const TextSpan(
                            text:
                                "Dial the code below to fund your Vescan account with ",
                            style: TextStyle(
                                color: Color(0xff030206),
                                fontSize: 16,
                                fontFamily: "Open"),
                            children: [
                              TextSpan(
                                  text: "N1000.00",
                                  style: TextStyle(
                                      color: Color(0xff00BFFF),
                                      fontFamily: "OpenMed",
                                      fontSize: 16))
                            ]),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: const Color(0xffF8FAFB),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          children: [
                            Text(
                              "United Bank For Africa",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 16,
                                  fontFamily: "Open"),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "*919*000*9721#",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 24,
                                  fontFamily: "OpenMed"),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Dial the code & fund your account within the validity period",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffFF9900),
                                  fontSize: 12,
                                  fontFamily: "Open"),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Buttons().authButtons(
                          title: "Tap to Dial",
                          action: () {
                            Get.toNamed(dialUssdCodeScreen);
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      Buttons().fadedButtons(
                          title: "I have completed the payment", action: () {}),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Note:",
                        style: TextStyle(
                            color: Color(0xff001F3F),
                            fontSize: 16,
                            fontFamily: "OpenMed"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 4,
                            width: 4,
                            decoration: const BoxDecoration(
                                color: Color(0xff001F3F),
                                shape: BoxShape.circle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "Ensure the phone number you are dialing this code with is linked to your vescan wallent account.",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 12,
                                  fontFamily: "Open"),
                            ),
                          ),
                        ],
                      )
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
