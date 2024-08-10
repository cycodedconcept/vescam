import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class AddDeliveryAddressSheet {
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
                  const Text(
                    "Add Delivery Address",
                    style: TextStyle(
                        color: Color(0xff06070C),
                        fontSize: 20,
                        fontFamily: "OpenMed"),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Iconsax.minus,
                      color: Color(0xff06070C),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Full Name",
                  hintStyle: const TextStyle(color: Color(0xff7C797A)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffADADAD), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffADADAD), width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffFF0022), width: 1)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Address Line 1",
                  hintStyle: const TextStyle(color: Color(0xff7C797A)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffADADAD), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffADADAD), width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffFF0022), width: 1)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Address Line 2 (Optional)",
                  hintStyle: const TextStyle(color: Color(0xff7C797A)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffADADAD), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffADADAD), width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffFF0022), width: 1)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Post Code",
                  hintStyle: const TextStyle(color: Color(0xff7C797A)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffADADAD), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffADADAD), width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffFF0022), width: 1)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "City",
                        hintStyle: const TextStyle(color: Color(0xff7C797A)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffADADAD), width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffADADAD), width: 1)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffFF0022), width: 1)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Country",
                        hintStyle: const TextStyle(color: Color(0xff7C797A)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffADADAD), width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffADADAD), width: 1)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffFF0022), width: 1)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Phone",
                  hintStyle: const TextStyle(color: Color(0xff7C797A)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffADADAD), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffADADAD), width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffFF0022), width: 1)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Buttons().authButtons(
                  title: "Add New Address",
                  action: () {
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
