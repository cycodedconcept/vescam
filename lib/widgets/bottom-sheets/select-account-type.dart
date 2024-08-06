import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class SelectAccountType {
  show(action) {
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
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    )),
                child: const Center(
                  child: Text(
                    "Select Account Type",
                    style: TextStyle(
                        color: Color(0xff030206),
                        fontSize: 16,
                        fontFamily: "OpenMed"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff333333).withOpacity(0.04),
                            blurRadius: 15,
                            offset: Offset(4, 4),
                            spreadRadius: 0)
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: const Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Iconsax.user,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Personal",
                          style: TextStyle(
                              color: Color(0xff030206),
                              fontFamily: "OpenMed",
                              fontSize: 16),
                        ),
                        trailing: Icon(Iconsax.arrow_right_3),
                      ),
                      Divider(),
                      ListTile(
                        leading: const Icon(
                          Iconsax.briefcase,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Businesses",
                          style: TextStyle(
                              color: Color(0xff030206),
                              fontFamily: "OpenMed",
                              fontSize: 16),
                        ),
                        trailing: Icon(Iconsax.arrow_right_3),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Color(0xff030206),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        isScrollControlled: true);
  }
}
