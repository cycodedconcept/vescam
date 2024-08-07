import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class ClearErrorsPopUp {
  show(context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              insetPadding: const EdgeInsets.symmetric(horizontal: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              content: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Clear Error Details",
                          style: TextStyle(
                              color: Color(0xff030206),
                              fontSize: 16,
                              fontFamily: "OpenMed"),
                        ),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Are you sure you want to clear all error details?",
                      style: TextStyle(
                        color: Color(0xff030206),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Buttons().authButtons(
                        title: "Proceed",
                        action: () {
                          Get.back();
                          Get.toNamed(errorClearLoadingScreen);
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Buttons().borderButton(
                        title: "Cancel",
                        action: () {
                          Get.back();
                        }),
                  ],
                ),
              ),
            ));
  }
}
