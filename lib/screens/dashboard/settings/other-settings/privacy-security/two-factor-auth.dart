import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:iconly/iconly.dart';

class TwoFactorAuthScreen extends StatelessWidget {
  const TwoFactorAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child:
              const Icon(Icons.arrow_back_ios, color: Colors.black, size: 24),
        ),
        title: const Text(
          "Two-Factor Authentication (2FA)",
          style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Your Password",
                      style: TextStyle(
                          color: Color(0xff030206),
                          fontFamily: "OpenBold",
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Two-Step Verification enabled. Your account is protected with an additional password.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff7C797A), fontSize: 14),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelStyle: TextStyle(color: Color(0xff00BFFF)),
                        labelText: "Enter Password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: const TextStyle(
                            color: Color(0xff7C797A), fontFamily: "OpenMed"),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff00BFFF), width: 1.5)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff00BFFF), width: 1.5)),
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
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Forget Password?",
                    style: TextStyle(
                        color: Color(0xff00BFFF),
                        fontFamily: "OpenMed",
                        fontSize: 14),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    backgroundColor: const Color(0xff00BFFF),
                    child: const Icon(
                      IconlyLight.arrow_right,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
