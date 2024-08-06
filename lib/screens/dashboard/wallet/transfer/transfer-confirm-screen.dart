import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pinput/pinput.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class TransferConfirmScreen extends StatelessWidget {
  const TransferConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Iconsax.arrow_left_2,
                        color: Color(0xff030206),
                      )),
                ),
                const SizedBox(
                  height: 100,
                ),
                Center(
                    child: SvgPicture.asset("assets/images/transfer-lock.svg")),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const Text(
                        "Transfer of N205 to Engr. Bello",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "OpenBold",
                            fontSize: 24),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: const TextSpan(
                          text: "Enter your 4 digit pin to confirm payment",
                          style: const TextStyle(
                            fontFamily: "Open",
                            color: Color(0xffADADAD),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Pinput(
                          length: 4,
                          onCompleted: (value) {
                            Get.toNamed(transferLoadingScreen);
                          },
                          autofocus: true,
                          showCursor: false,
                          obscureText: true,
                          focusedPinTheme: PinTheme(
                            width: 23,
                            height: 23,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: const Color(0xffC5C9FB))),
                          ),
                          defaultPinTheme: PinTheme(
                            width: 23,
                            height: 23,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: const Color(0xffC5C9FB))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: const TextSpan(
                            text: "Forgot your pin?",
                            style: TextStyle(
                              fontFamily: "OpenMed",
                              color: Color(0xff001F3F),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
