import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gif/gif.dart';

import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:vescan/controller/home/home-state-controller.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/screens/dashboard/home/homeViews/card-dashboard.dart';
import 'package:vescan/screens/dashboard/home/homeViews/home-dashboard-view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeStateController>(builder: (controller) {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          color: const Color(0xff001F3F),
          child: SafeArea(
              child: SingleChildScrollView(
                  child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                  SizedBox(
                    width: 150,
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Volvo XC40",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Iconsax.arrow_down_1,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    IconlyLight.location,
                                    color: Color(0xff7C797A),
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Ikeja, Lagos",
                                    style: TextStyle(
                                        color: Color(0xff7C797A), fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(addNewDeviceScreen);
                          },
                          child: Container(
                            height: 33,
                            width: 33,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(activityScreen);
                        },
                        child: Container(
                          height: 33,
                          width: 33,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white)),
                          child: const Icon(
                            Icons.note_alt_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(notificationScreen);
                        },
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white.withOpacity(0.2),
                          child: const Icon(
                            Iconsax.notification,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              controller.showDashboard
                  ? CarDashboardView()
                  : HomeDashboardView()
            ],
          ))),
        ),
      );
    });
  }

  Container _tile(title, image, onTap) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        onTap: onTap,
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(image),
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontFamily: "OpenMed", fontSize: 16),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}
