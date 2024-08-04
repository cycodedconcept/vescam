import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class InspectionFeeSheet {
  show(action) {
    Get.bottomSheet(
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              )),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                padding: EdgeInsets.symmetric(vertical: 10),
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
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "N:B: Inspection fee is not refundable except if you use the service of our mechanic from the app. *",
                style: TextStyle(color: Color(0xff7C797A), fontSize: 11),
              ),
              const SizedBox(
                height: 30,
              ),
              Buttons()
                  .authButtons(title: "Proceed to Payment", action: action),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        isScrollControlled: true);
  }
}
