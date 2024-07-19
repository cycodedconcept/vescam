import 'package:flutter/material.dart';
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
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
