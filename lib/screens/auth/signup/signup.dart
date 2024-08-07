import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../routes/app/app-route-names.dart';
import '../../../widgets/buttons/buttons.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  "Sign Up",
                  style: TextStyle(
                      color: Color(0xff030206),
                      fontFamily: "OpenMed",
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Full Name",
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
                          hintText: "Full Name",
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
                  height: 25,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Email Address",
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
                          hintText: "Enter Email Address",
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
                  height: 25,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Password",
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
                          suffixIcon: Icon(Icons.visibility),
                          hintText: "Enter Password",
                          hintStyle: const TextStyle(
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
                        obscureText: true,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Confirm Password",
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
                          suffixIcon: Icon(Icons.visibility),
                          hintText: "Enter Password",
                          hintStyle: const TextStyle(
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
                        obscureText: true,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Checkbox.adaptive(
                      value: true,
                      onChanged: (value) {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(color: Color(0xff00BFFF))),
                    ),
                    const Expanded(
                      child: Text(
                        "By creating an account, you agree to our Terms of Service and Privacy Policy",
                        style:
                            TextStyle(color: Color(0xff7C797A), fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Buttons().authButtons(
                    action: () {
                      Get.toNamed(signupLoading);
                    },
                    title: "Sign Up"),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Or",
                    style: TextStyle(
                        color: Color(0xff7C797A),
                        fontSize: 16,
                        fontFamily: "OpenMed"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Buttons().socialButtons(
                    title: "Sign in with Google",
                    icon: "google.svg",
                    action: () {}),
                const SizedBox(
                  height: 15,
                ),
                Buttons().socialButtons(
                    title: "Sign in with Apple",
                    icon: "apple.svg",
                    action: () {}),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Already have an account? ",
                        style: const TextStyle(
                          fontFamily: "OpenBold",
                          color: Color(0xff030206),
                          fontSize: 14,
                        ),
                        children: [
                          WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: InkWell(
                                  onTap: () {
                                    Get.toNamed(login);
                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Color(0xff00BFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  )))
                        ]),
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
