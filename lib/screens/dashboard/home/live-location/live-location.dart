import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class LiveLocationTracker extends StatelessWidget {
  const LiveLocationTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/map-background.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    decoration: BoxDecoration(
                        color: const Color(0xff00BFFF),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/arrow-right.svg"),
                        const SizedBox(
                          width: 20,
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Text(
                                "600m",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "OpenBold",
                                    fontSize: 41),
                              ),
                              Text(
                                "In 500m take turning right",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 30),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: BoxDecoration(
                    color: const Color(0xff00BFFF),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Trinity House, Beside GT Bank",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "OpenMed"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Oba Akran Road, Ikeja",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "OpenMed"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "2 Km",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              StepProgressIndicator(
                                totalSteps: 100,
                                currentStep: 50,
                                size: 5,
                                padding: 0,
                                selectedColor: Color(0xff001F3F),
                                unselectedColor: Colors.white,
                                roundedEdges: Radius.circular(10),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "3 min",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: "OpenMed"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset("assets/images/location-search.svg")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
