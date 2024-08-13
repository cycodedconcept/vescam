import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:gif/gif.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/bottom-sheets/payment-recipet.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class TopUpRecieptSheet {
  show() {
    Get.bottomSheet(
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              )),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.close,
                      size: 20,
                      color: Color(0xff1F1F1F),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.ios_share_outlined,
                      size: 20,
                      color: Color(0xff1F1F1F),
                    ),
                  ),
                ],
              ),
              SvgPicture.asset("assets/images/check.svg"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Payment Successful!",
                style: TextStyle(
                    color: Color(0xff001F3F),
                    fontSize: 18,
                    fontFamily: "OpenMed"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "N60,000.00",
                style: TextStyle(
                    color: Color(0xff001F3F),
                    fontSize: 28,
                    fontFamily: "OpenBold"),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 24,
                          spreadRadius: 0,
                          color: Color(0xffAAAAAA).withOpacity(0.12))
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 63,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffF8FAFB),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          "Payment Details",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "OpenMed"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Ref Number",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "000085752257",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "OpenMed"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Payment Time",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "03-06-2024, 13:22:16",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "OpenMed"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Payment Method",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Bank Card",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "OpenMed"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Sender Name",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "John Oluyole",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "OpenMed"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DottedDashedLine(
                              height: 0,
                              width: double.infinity,
                              axis: Axis.horizontal,
                              dashColor: Color(0xffEDEDED)),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Amount",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "N60,000.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "OpenMed"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Admin Fee",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "N10.20",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "OpenMed"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Payment Status",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset("assets/images/success-tag.svg")
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Buttons().authButtons(title: "Download", action: () {}),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        isScrollControlled: true,
        isDismissible: false,
        enableDrag: false);
  }
}
