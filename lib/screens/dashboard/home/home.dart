import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gif/gif.dart';
import 'package:heroicons/heroicons.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
                            IconlyLight.notification,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Switch.adaptive(
                      value: false,
                      activeColor: const Color(0xff00BFFF),
                      onChanged: (value) {}),
                  Container(
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
                      image:
                          const AssetImage("assets/gif/navigation-symbol.gif"),
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SvgPicture.asset("assets/images/car-stand.svg"),
                ],
              ),
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
                          const Icon(
                            Icons.speed_outlined,
                            color: Colors.white,
                            size: 40,
                          )
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
                          const Icon(
                            Iconsax.speedometer,
                            color: Colors.white,
                            size: 40,
                          )
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
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
                              child: Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.engineering,
                                          color: Color(0xff001F3F),
                                        ),
                                        Text(
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
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Iconsax.battery_charging,
                                          color: Color(0xff001F3F),
                                        ),
                                        Text(
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
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.thermostat_auto,
                                          color: Color(0xff001F3F),
                                        ),
                                        Text(
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
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.thermostat,
                                          color: Color(0xff001F3F),
                                        ),
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
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "OpenMed",
                                        fontSize: 10),
                                  ),
                                ],
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
            ],
          ),
        )),
      ),
    );
  }
}
