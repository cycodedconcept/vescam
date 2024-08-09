import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class PIDModal {
  show(context, {title, image, value, minValue}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              contentPadding: EdgeInsets.zero,
              backgroundColor: Colors.white,
              insetPadding: const EdgeInsets.symmetric(horizontal: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.5)),
              content: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                          Text(
                            title,
                            style: const TextStyle(
                                color: Color(0xff030206),
                                fontSize: 12,
                                fontFamily: "OpenMed"),
                          ),
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.close,
                              size: 15,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SvgPicture.asset("assets/images/pid-modal/$image"),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      value,
                      style: const TextStyle(
                          color: Color(0xff030206),
                          fontSize: 14,
                          fontFamily: "OpenMed"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color(0xffF8FAFB),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6.5),
                            bottomRight: Radius.circular(6.5),
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 42,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  height: 42,
                                  width: 45.35,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              color: Color(0xff030206)
                                                  .withOpacity(0.5)))),
                                  child: const Icon(
                                    Icons.signal_wifi_0_bar,
                                    size: 20,
                                    color: Color(0xff030206),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  "Capacity (Good)",
                                  style: TextStyle(
                                      color: Color(0xff030206),
                                      fontSize: 11,
                                      fontFamily: "OpenMed"),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Color(0xff030206).withOpacity(0.5),
                          ),
                          Container(
                            height: 42,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  height: 42,
                                  width: 45.35,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              color: Color(0xff030206)
                                                  .withOpacity(0.5)))),
                                  child: const Icon(
                                    Icons.warning_amber_outlined,
                                    size: 20,
                                    color: Color(0xff030206),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Turn on Notification at ${minValue}",
                                  style: const TextStyle(
                                      color: Color(0xff030206),
                                      fontSize: 11,
                                      fontFamily: "OpenMed"),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
