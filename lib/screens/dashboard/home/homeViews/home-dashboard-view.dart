import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gif/gif.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:vescan/controller/home/home-state-controller.dart';
import 'package:vescan/widgets/pop-up/pid-modal.dart';

import '../../../../routes/app/app-route-names.dart';

class HomeDashboardView extends StatelessWidget {
  const HomeDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeStateController>(builder: (controller) {
      return Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Switch.adaptive(
                value: controller.showDashboard,
                activeColor: const Color(0xff00BFFF),
                onChanged: (value) {
                  controller.toggleShowDashboard();
                }),
            InkWell(
              onTap: () {
                Get.toNamed(liveLocationScreen);
              },
              child: Container(
                height: 37,
                width: 37,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Gif(
                  autostart: Autostart.loop,
                  placeholder: (context) =>
                      const Center(child: CircularProgressIndicator()),
                  image: const AssetImage("assets/gif/navigation-symbol.gif"),
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        // const SizedBox(
        //   height: 20,
        // ),
        Image.asset("assets/images/3d-car.png"),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.06)),
                child: Column(
                  children: [
                    const Text(
                      "SPEED",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "OpenMed",
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "60",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "OpenMed",
                              fontSize: 32),
                          children: [
                            TextSpan(
                              text: " mph",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "OpenMed",
                                  fontSize: 12),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SvgPicture.asset("assets/images/speedometer1.svg")
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.06)),
                child: Column(
                  children: [
                    const Text(
                      "RPM",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "OpenMed",
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "2500",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "OpenMed",
                              fontSize: 32),
                          children: [
                            TextSpan(
                              text: " RPM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "OpenMed",
                                  fontSize: 12),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SvgPicture.asset("assets/images/speedometer2.svg")
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Stack(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white.withOpacity(0.06)),
              child: Column(
                children: [
                  const Text(
                    "STATUS",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "OpenMed",
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            PIDModal().show(
                              context,
                              title: "Engine Load",
                              image: "engine.svg",
                              value: "20%",
                              minValue: "15%",
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/engine.svg"),
                                    const Text(
                                      "20%",
                                      style: TextStyle(
                                          color: Color(0xff001F3F),
                                          fontFamily: "OpenMed",
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Engine Load",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "OpenMed",
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            PIDModal().show(
                              context,
                              title: "Battery Voltage",
                              image: "speed.svg",
                              value: "87V",
                              minValue: "20V",
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/battery.svg"),
                                    const Text(
                                      "12V",
                                      style: TextStyle(
                                          color: Color(0xff001F3F),
                                          fontFamily: "OpenMed",
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Battery",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "OpenMed",
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            PIDModal().show(
                              context,
                              title: "Coolant Temperature",
                              image: "cool.svg",
                              value: "87F",
                              minValue: "20F",
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/cool-temp.svg"),
                                    const Text(
                                      "870F",
                                      style: TextStyle(
                                          color: Color(0xff001F3F),
                                          fontFamily: "OpenMed",
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Coolant Temp.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "OpenMed",
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            PIDModal().show(
                              context,
                              title: "Intake Temperature",
                              image: "temp.svg",
                              value: "212F",
                              minValue: "20F",
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/temperature.svg"),
                                    Text(
                                      "2120F",
                                      style: TextStyle(
                                          color: Color(0xff001F3F),
                                          fontFamily: "OpenMed",
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Intake Air Temp.",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "OpenMed",
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 25, right: 20),
                child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.06)),
                child: Column(
                  children: [
                    const Text(
                      "FUEL LEVEL",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "OpenMed",
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "96",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "OpenMed",
                              fontSize: 32),
                          children: [
                            TextSpan(
                              text: " %",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "OpenMed",
                                  fontSize: 12),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CircularStepProgressIndicator(
                      totalSteps: 4,
                      currentStep: 1,
                      height: 74,
                      padding: pi / 10,
                      width: 74,
                      selectedColor: const Color(0xffFFD803),
                      unselectedColor: Colors.white,
                      roundedCap: (_, __) => true,
                      child: const Icon(
                        Iconsax.gas_station4,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.06)),
                child: Column(
                  children: [
                    const Text(
                      "THROTTLE",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "OpenMed",
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "67",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "OpenMed",
                              fontSize: 32),
                          children: [
                            TextSpan(
                              text: " %",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "OpenMed",
                                  fontSize: 12),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CircularStepProgressIndicator(
                      totalSteps: 4,
                      currentStep: 1,
                      height: 74,
                      width: 74,
                      padding: pi / 10,
                      selectedColor: const Color(0xff00BFFF),
                      unselectedColor: Colors.white,
                      roundedCap: (_, __) => true,
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/images/car-throttle.svg",
                          height: 40,
                          width: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        _tile("Contact A Mechanic", "assets/images/mechanic.png", () {
          Get.toNamed(contactMechanicScreen);
        }),
        const SizedBox(
          height: 10,
        ),
        _tile("Book A Towing Vehicle", "assets/images/tow.png", () {
          Get.toNamed(bookATowScreen);
        }),
        const SizedBox(
          height: 50,
        ),
      ]);
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
