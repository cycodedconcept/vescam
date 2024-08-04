import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class InspectionFeeSheet {
  show() {
    Get.bottomSheet(
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )),
          child: Column(
            children: [
              const Text(
                "Inspection Fee",
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: "OpenBold"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffE2E2E4))),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Inspection Fee",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "OpenBold"),
                          ),
                          const Text(
                            "N 5,000",
                            style: TextStyle(
                              color: Color(0xff00BFFF),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xffE2E2E4),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "OpenBold"),
                          ),
                          Row(
                            children: [
                              Text(
                                "Wallet Charge",
                                style: TextStyle(
                                  color: Color(0xff25D366),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Iconsax.add,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xffE2E2E4),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: "OpenBold"),
                          ),
                          Text(
                            "N 5,000",
                            style: TextStyle(
                              color: Color(0xff00BFFF),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        isScrollControlled: true);
  }
}
