import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class MessageMechanicScreen extends StatelessWidget {
  const MessageMechanicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20,
                        )),
                    const Text(
                      "Message",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "OpenMed",
                          fontSize: 16),
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Get.toNamed(notificationScreen);
                            },
                            child: const Icon(
                              Iconsax.notification,
                              color: Colors.black,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  color: const Color(0xffF8FAFB),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Message...",
                              hintStyle: TextStyle(color: Colors.black),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/images/smile.svg"),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset("assets/images/mic.svg"),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset("assets/images/camera.svg"),
                              const SizedBox(
                                width: 3,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
