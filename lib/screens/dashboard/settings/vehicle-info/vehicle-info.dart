import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class VehicleInfoScreen extends StatelessWidget {
  const VehicleInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child:
              const Icon(Icons.arrow_back_ios, color: Colors.black, size: 24),
        ),
        centerTitle: true,
        title: const Text(
          "Vehicle Information",
          style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(3.88, 3.88),
                          blurRadius: 14.55,
                          color: const Color(0xff333333).withOpacity(0.04))
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.more_vert,
                        color: Color(0xff7C797A),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: SizedBox(
                        height: 250,
                        width: 250,
                        child: Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SfRadialGauge(
                                axes: <RadialAxis>[
                                  RadialAxis(
                                    minimum: 0,
                                    maximum: 100,
                                    showLabels: false,
                                    showTicks: false,
                                    showAxisLine: false,
                                    ranges: <GaugeRange>[
                                      GaugeRange(
                                        startValue: 0,
                                        endValue: 50,
                                        startWidth: 10,
                                        endWidth: 10,
                                        gradient: const SweepGradient(
                                          colors: [Colors.red, Colors.yellow],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                      GaugeRange(
                                        startValue: 50,
                                        endValue: 75,
                                        startWidth: 10,
                                        endWidth: 10,
                                        gradient: const SweepGradient(
                                          colors: [Colors.yellow, Colors.green],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                      GaugeRange(
                                        startValue: 75,
                                        endValue: 100,
                                        startWidth: 10,
                                        endWidth: 10,
                                        gradient: const SweepGradient(
                                          colors: [Colors.green, Colors.green],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/images/3dcar.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Iconsax.edit,
                          color: Color(0xff00BFFF),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Volvo XC40",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "OpenBold",
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(
                              "assets/images/calender.svg",
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "Year",
                              style: TextStyle(
                                  color: Color(0xff7C797A), fontSize: 11),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "2023",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 12,
                                  fontFamily: "OpenMed"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              "assets/images/speed.svg",
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "Model",
                              style: TextStyle(
                                  color: Color(0xff7C797A), fontSize: 11),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "XC40",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 12,
                                  fontFamily: "OpenMed"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              "assets/images/chart.svg",
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "VDS",
                              style: TextStyle(
                                  color: Color(0xff7C797A), fontSize: 11),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "CM826",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 12,
                                  fontFamily: "OpenMed"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              "assets/images/key.svg",
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "Plate",
                              style: TextStyle(
                                  color: Color(0xff7C797A), fontSize: 11),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "ABC-1234",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 12,
                                  fontFamily: "OpenMed"),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(color: Color(0xffF1F1F1)))),
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/images/speed2.svg"),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "Chassis No",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 12,
                                  fontFamily: "OpenMed"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      flex: 8,
                      child: const Text(
                        "1HGCM82633A123456",
                        style: TextStyle(
                            color: Color(0xff030206),
                            fontSize: 16,
                            fontFamily: "OpenMed"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(color: Color(0xffF1F1F1)))),
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/images/speed2.svg"),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "VIN",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 12,
                                  fontFamily: "OpenMed"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      flex: 8,
                      child: Text(
                        "ABC-1234",
                        style: TextStyle(
                            color: Color(0xff030206),
                            fontSize: 16,
                            fontFamily: "OpenMed"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(color: Color(0xffF1F1F1)))),
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/images/speed2.svg"),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "Engine Type",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 12,
                                  fontFamily: "OpenMed"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      flex: 8,
                      child: Text(
                        "2.4L 4-cylinder",
                        style: TextStyle(
                            color: Color(0xff030206),
                            fontSize: 16,
                            fontFamily: "OpenMed"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(color: Color(0xffF1F1F1)))),
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/images/speed2.svg"),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "Lagos State",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 12,
                                  fontFamily: "OpenMed"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      flex: 8,
                      child: Text(
                        "Reg. State",
                        style: TextStyle(
                            color: Color(0xff030206),
                            fontSize: 16,
                            fontFamily: "OpenMed"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
