import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/widgets/bottom-sheets/checkout/add-delivery-address.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class DeliveryInfoSheet {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery",
                    style: TextStyle(
                        color: Color(0xff06070C),
                        fontSize: 20,
                        fontFamily: "OpenMed"),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Iconsax.minus,
                      color: Color(0xff06070C),
                    ),
                  )
                ],
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
                    RadioListTile(
                      value: "Free No-Rush Delivery",
                      groupValue: "Free No-Rush Delivery",
                      onChanged: (value) {},
                      activeColor: const Color(0xff00BBFFF),
                      title: const Text(
                        "Free No-Rush Delivery",
                        style:
                            TextStyle(color: Color(0xff030206), fontSize: 14),
                      ),
                      subtitle: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Arrives Fri, 9 Sep",
                                style: TextStyle(
                                    color: Color(0xff7C797A), fontSize: 12),
                              ),
                              Text(
                                "To Tue, 13 Sep",
                                style: TextStyle(
                                    color: Color(0xff7C797A), fontSize: 12),
                              ),
                            ],
                          ),
                          Text(
                            "More Options",
                            style: TextStyle(
                                color: Color(0xff030206), fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0xffE2E2E4),
                    ),
                    RadioListTile(
                      value: "Pick Up",
                      groupValue: "",
                      onChanged: (value) {},
                      activeColor: const Color(0xff00BBFFF),
                      title: const Text(
                        "Pick Up",
                        style:
                            TextStyle(color: Color(0xff030206), fontSize: 14),
                      ),
                      subtitle: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Find a Location",
                            style: TextStyle(
                                color: Color(0xff7C797A), fontSize: 12),
                          ),
                          Text(
                            "More Options",
                            style: TextStyle(
                                color: Color(0xff030206), fontSize: 10),
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
              Padding(
                padding: const EdgeInsets.all(15),
                child: InkWell(
                  onTap: () {
                    AddDeliveryAddressSheet().show();
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Iconsax.info_circle,
                            color: Color(0xffFF3737),
                            size: 13,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Enter Delivery Address",
                            style: TextStyle(
                                color: Color(0xffFF3737), fontSize: 14),
                          ),
                        ],
                      ),
                      Text(
                        "Edit",
                        style:
                            TextStyle(color: Color(0xff030206), fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Buttons().authButtons(title: "Continue", action: () {}),
              const SizedBox(
                height: 15,
              ),
              Buttons().borderButton(
                  title: "Add New Address",
                  action: () {
                    AddDeliveryAddressSheet().show();
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
