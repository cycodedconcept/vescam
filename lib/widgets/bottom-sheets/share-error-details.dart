import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class ShareErrorDetailsScreen {
  show() {
    Get.bottomSheet(
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color(0xffF8F8F8),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/share-error-details.svg"),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Share Error Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "OpenMed"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            
                          },
                          leading: SvgPicture.asset(
                              "assets/images/share-mechanic.svg"),
                          title: const Text(
                            "Share to Mechanic",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "OpenMed"),
                          ),
                        ),
                        const Divider(
                          thickness: 0.5,
                          color: Color(0xffD9DDE2),
                        ),
                        ListTile(
                          leading: SvgPicture.asset(
                              "assets/images/send-whatsapp.svg"),
                          title: const Text(
                            "Share as Message",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "OpenMed"),
                          ),
                        ),
                        const Divider(
                          thickness: 0.5,
                          color: Color(0xffD9DDE2),
                        ),
                        ListTile(
                          leading: SvgPicture.asset(
                              "assets/images/more-options.svg"),
                          title: const Text(
                            "More Options",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "OpenMed"),
                          ),
                        ),
                        const Divider(
                          thickness: 0.5,
                          color: Color(0xffD9DDE2),
                        ),
                        ListTile(
                          leading: SvgPicture.asset(
                              "assets/images/share-message.svg"),
                          title: const Text(
                            "Send in Whatsapp",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "OpenMed"),
                          ),
                        ),
                        const Divider(
                          thickness: 0.5,
                          color: Color(0xffD9DDE2),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        isScrollControlled: true);
  }
}
