import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../routes/app/app-route-names.dart';
import '../../../../../widgets/buttons/buttons.dart';

class BankAccount extends StatelessWidget {
  const BankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "To ensure the security of your funds, you can only add a bank account linked to your Identification document.",
            textAlign: TextAlign.justify,
            style: TextStyle(color: Color(0xff030206), fontSize: 16),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color(0xffF8FAFB),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bank",
                        style: TextStyle(
                          color: Color(0xff030206),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Select Bank",
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(color: Color(0xff7C797A)),
                          suffixIcon: Icon(Iconsax.arrow_right_3),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
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
                        "Bank Account Number",
                        style: TextStyle(
                          color: Color(0xff030206),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter 10-digit account number",
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(color: Color(0xff7C797A)),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Buttons().authButtons(
              title: "Confirm",
              action: () {
                Get.toNamed(transactionLoadingScreen);
              }),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
