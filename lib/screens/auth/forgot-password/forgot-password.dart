import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:vescan/routes/app/app-route-names.dart';

import '../../../widgets/buttons/buttons.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset("assets/images/back.svg")),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/logo-2.png"),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Forget Password",
                  style: TextStyle(
                      color: Color(0xff030206),
                      fontFamily: "OpenMed",
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "We’ll send you a link to reset it. Enter your email address used for Vescan account.",
                  style: TextStyle(color: Color(0xff030206), fontSize: 14),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Phone Number",
                        style: TextStyle(
                            color: Color(0xff030206),
                            fontSize: 14,
                            fontFamily: "OpenMed"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Phone Number",
                          hintStyle: TextStyle(
                              color: Color(0xff7C797A), fontFamily: "OpenMed"),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xff7C797A), width: 1.5)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xff001F3F), width: 1.5)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffFF0022), width: 1.5)),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Buttons().authButtons(
                    action: () {
                      Get.toNamed(forgotPasswordVerify);
                    },
                    title: "Send Reset PIN"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
