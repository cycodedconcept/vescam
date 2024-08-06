import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class PaymentRecieptSheet {
  show() {
    Get.bottomSheet(
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color(0xffF8FAFB),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              )),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff333333).withOpacity(0.04),
                          offset: Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 0)
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Payment Receipt",
                        style: TextStyle(
                            color: Color(0xff030206),
                            fontSize: 16,
                            fontFamily: "OpenMed"),
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
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(17),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff333333).withOpacity(0.04),
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Payment confirmation",
                            style: TextStyle(
                                color: Color(0xff030206),
                                fontSize: 18,
                                fontFamily: "OpenMed"),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            "Engr. Hassan Bello",
                            style: TextStyle(
                                color: Color(0xff030206),
                                fontSize: 16,
                                fontFamily: "OpenMed"),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "9873647899 | 08-09-90",
                            style: TextStyle(
                                color: Color(0xff7C797A),
                                fontSize: 14,
                                fontFamily: "OpenMed"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child:
                                SvgPicture.asset("assets/images/exchange.svg"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Payee name",
                            style: TextStyle(
                                color: Color(0xff030206),
                                fontSize: 16,
                                fontFamily: "OpenMed"),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Kamolideen O. Okelola",
                                    style: TextStyle(
                                        color: Color(0xff030206),
                                        fontSize: 16,
                                        fontFamily: "OpenMed"),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "9873647899 | 08-09-90",
                                    style: TextStyle(
                                        color: Color(0xff7C797A),
                                        fontSize: 14,
                                        fontFamily: "OpenMed"),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Amount",
                                    style: TextStyle(
                                        color: Color(0xff030206),
                                        fontSize: 18,
                                        fontFamily: "OpenMed"),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "N205.00",
                                    style: TextStyle(
                                        color: Color(0xff030206),
                                        fontSize: 14,
                                        fontFamily: "OpenMed"),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Payee reference",
                                style: TextStyle(
                                    color: Color(0xff030206),
                                    fontSize: 16,
                                    fontFamily: "OpenMed"),
                              ),
                              Text(
                                "Savings",
                                style: TextStyle(
                                    color: Color(0xff7C797A),
                                    fontSize: 14,
                                    fontFamily: "OpenMed"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Center(
                          child: DottedDashedLine(
                        height: 0,
                        width: double.infinity,
                        axis: Axis.horizontal,
                        dashColor: Color(0xff008FBF),
                      )),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Payment date",
                                      style: TextStyle(
                                          color: Color(0xff030206),
                                          fontSize: 16,
                                          fontFamily: "OpenMed"),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "03 July, 2024",
                                      style: TextStyle(
                                          color: Color(0xff7C797A),
                                          fontSize: 14,
                                          fontFamily: "OpenMed"),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          color: Color(0xff030206),
                                          fontSize: 18,
                                          fontFamily: "OpenMed"),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "12:15am",
                                      style: TextStyle(
                                          color: Color(0xff7C797A),
                                          fontSize: 14,
                                          fontFamily: "OpenMed"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            color: Color(0xffF1F1F1),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/logo-2.png",
                                  height: 22.73,
                                  width: 94,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.ios_share_outlined,
                                    color: Color(0xff030206),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: "Need help with this transaction? ",
                      style: const TextStyle(
                        fontFamily: "OpenMed",
                        color: Color(0xff7C797A),
                        fontSize: 14,
                      ),
                      children: [
                        WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: InkWell(
                                onTap: () {},
                                child: const Text(
                                  "Contact us",
                                  style: TextStyle(
                                      color: Color(0xff00BFFF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )))
                      ]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Buttons().authButtons(title: "Done", action: () {}),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        isScrollControlled: true);
  }
}
