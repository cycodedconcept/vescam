import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class FundWalletBottom {
  show() {
    Get.bottomSheet(
        isDismissible: false,
        isScrollControlled: true,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              )),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "How to fund your wallet",
                    style: TextStyle(
                        color: Color(0xff030206),
                        fontFamily: "OpenMed",
                        fontSize: 22),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.close,
                      color: Color(0xff030206),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: const TextSpan(
                    text:
                        'To fund your vescan wallet, copy your vescan account number (your number), and on your Bank App, select ',
                    style: TextStyle(
                        color: Color(0xff030206),
                        fontSize: 15,
                        fontFamily: "Open"),
                    children: [
                      TextSpan(
                          text: '"To Other Banks” ',
                          style: TextStyle(
                              color: Color(0xff030206),
                              fontFamily: "OpenBold",
                              fontSize: 15)),
                      TextSpan(
                          text: 'and then select ',
                          style: TextStyle(
                              color: Color(0xff030206),
                              fontFamily: "Open",
                              fontSize: 15)),
                      TextSpan(
                          text: '“Bank Name” ',
                          style: TextStyle(
                              color: Color(0xff030206),
                              fontFamily: "OpenBold",
                              fontSize: 15)),
                      TextSpan(
                          text: 'as receiving bank.',
                          style: TextStyle(
                              color: Color(0xff030206),
                              fontFamily: "Open",
                              fontSize: 15)),
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xffF8FAFB),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vescan Account",
                          style: TextStyle(
                            color: Color(0xff030206),
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Your Bank Name",
                          style: TextStyle(
                              color: Color(0xff030206),
                              fontSize: 16,
                              fontFamily: "OpenBold"),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "7066114751 ",
                            style: TextStyle(
                              color: Color(0xff030206),
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Iconsax.copy,
                            color: Color(0xff030206),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
