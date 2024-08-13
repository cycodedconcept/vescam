import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class ErrorCodeDetailScreen extends StatelessWidget {
  ErrorCodeDetailScreen({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Iconsax.arrow_left_2,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  const Text(
                    "Error Code: P0128",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(notificationScreen);
                    },
                    child: const Icon(
                      Iconsax.notification,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: const Color(0xffF8FAFB),
              child: Column(
                children: [
                  Expanded(
                    flex: 9,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Error Code: P0128",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "OpenMed",
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "P0171",
                                  style: TextStyle(
                                      color: Color(0xff7C797A), fontSize: 12),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Error Name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "OpenMed",
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "System Too Lean (Bank 1)",
                                  style: TextStyle(
                                      color: Color(0xff7C797A), fontSize: 12),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Error Meaning",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "OpenMed",
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "The error code P0171 indicates that the air-fuel mixture is too lean, meaning there is too much air and not enough fuel in the combustion chamber for the first bank of the engine.",
                                  style: TextStyle(
                                      color: Color(0xff7C797A), fontSize: 12),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Causes of the Error",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "OpenMed",
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  """
Vacuum Leaks: Cracks or loose connections in the intake manifold, vacuum lines, or hoses.
Faulty Mass Airflow Sensor (MAF): Incorrect readings can cause the engine control unit (ECU) to miscalculate the air-fuel ratio.
Clogged Fuel Injectors: Fuel injectors are not delivering enough fuel.
Faulty Oxygen Sensor: Incorrect readings from the O2 sensor can lead to incorrect fuel adjustments.
Fuel Pump Issues: Insufficient fuel pressure from a failing fuel pump or clogged fuel filter.
Exhaust Leaks: Leaks before or near the O2 sensor.
                                          """,
                                  style: TextStyle(
                                      color: Color(0xff7C797A), fontSize: 12),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Symptoms",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "OpenMed",
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  """
Check Engine Light: Illuminates on the dashboard.
Poor Fuel Economy: Increased fuel consumption.
Engine Misfires: Irregular engine operation, causing rough idling or stalling.
Reduced Engine Performance: Decrease in power and acceleration.
                                          """,
                                  style: TextStyle(
                                      color: Color(0xff7C797A), fontSize: 12),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(uploadFilesForMechanic);
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(0xff001F3F),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/Share circle.svg"),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Share",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )),
                        ),
                      ))
                ],
              ),
            )),
          ],
        )),
      ),
    );
  }
}
