import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/bottom-sheets/checkout/add-payment-method.dart';
import 'package:vescan/widgets/bottom-sheets/checkout/delivery-info.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class CheckoutSheet {
  show() {
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
                "Checkout",
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: "OpenMed"),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "2 item",
                style: TextStyle(color: Color(0xff7C797A), fontSize: 14),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffE2E2E4))),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "OpenMed"),
                          ),
                          InkWell(
                            onTap: () {
                              DeliveryInfoSheet().show();
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Select Delivery",
                                  style: TextStyle(
                                    color: Color(0xff00BFFF),
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
                                fontFamily: "OpenMed"),
                          ),
                          InkWell(
                            onTap: () {
                              AddPaymentMethodSheet().show();
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Select Payment",
                                  style: TextStyle(
                                    color: Color(0xff00BFFF),
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
                            "Purchase Summary",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "OpenMed"),
                          ),
                          Row(
                            children: [
                              Text(
                                "N 20,550 + Shipping",
                                style: TextStyle(
                                  color: Color(0xff00BFFF),
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
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "By tapping “Submit Payment”, I agree to the Terms Of Sale",
                style: TextStyle(color: Color(0xff7C797A), fontSize: 11),
              ),
              const SizedBox(
                height: 30,
              ),
              Buttons().authButtons(
                  title: "Submit Payment",
                  action: () {
                    Get.toNamed(checkoutLoadingScreen);
                  }),
              const SizedBox(
                height: 15,
              ),
              Buttons().borderButton(
                  title: "Continue Shopping",
                  action: () {
                    Get.back();
                    Get.back();
                  }),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        isScrollControlled: true);
  }
}
