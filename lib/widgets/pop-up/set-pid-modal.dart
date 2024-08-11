import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class SetPidModalSheet {
  show(context, title, icon) {
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
                          title,
                          style: const TextStyle(
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
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Set your PRD Threshold to ensure safety, compliance, and optimal performance.",
                      style: TextStyle(
                        color: Color(0xff030206),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: const Color(0xffA9A9A9))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 48,
                            width: 54,
                            decoration: const BoxDecoration(
                              color: Color(0xff001F3F),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "OpenBold",
                                    fontSize: 15),
                              ),
                            ),
                          ),
                          Text(
                            "40$icon",
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black),
                          ),
                          Container(
                            height: 48,
                            width: 54,
                            decoration: const BoxDecoration(
                              color: Color(0xff001F3F),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "OpenBold",
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Buttons().authButtons(
                        title: "Save",
                        action: () {
                          Get.back();
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ));
  }
}
