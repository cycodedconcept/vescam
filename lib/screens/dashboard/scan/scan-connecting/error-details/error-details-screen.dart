import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';
import 'package:vescan/widgets/pop-up/clear-errors.dart';

class ErrorDetailsScreen extends StatelessWidget {
  ErrorDetailsScreen({super.key});

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
                    "Error Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  const Icon(
                    Iconsax.notification,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: const Color(0xffF8FAFB),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Gateway",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "OpenMed",
                              fontSize: 18),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                ClearErrorsPopUp().show(context);
                              },
                              child: const Icon(
                                Icons.clear_all,
                                color: Color(0xff7C797A),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                IconlyLight.send,
                                color: Color(0xff7C797A),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _errorTile(
                      title: "Error Code: P0128",
                      subtitle: "Error Name: Coolant Thermostat Malfunction",
                    ),
                    _errorTile(
                      title: "Error Code: P0138",
                      subtitle: "Error Name: Sensor Circuit High Voltage",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Automatic Transmission (AT)",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "OpenMed",
                              fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _errorTile(
                      title: "Error Code: P0171",
                      subtitle: "Error Name: ECM/PCM Processor Fault Syst....",
                    ),
                    _errorTile(
                      title: "Error Code: P0606",
                      subtitle: "Error Name: Intake Camshaft Position",
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Buttons().authButtons(
                        title: "Hire a Mechanic",
                        action: () {
                          Get.toNamed(errorDetailsScreen);
                        })
                  ],
                ),
              ),
            )),
          ],
        )),
      ),
    );
  }

  Container _errorTile({title, subtitle}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Color(0xff043740).withOpacity(0.1),
                offset: Offset(0, 0),
                blurRadius: 15,
                spreadRadius: 0)
          ]),
      child: ListTile(
        onTap: () {
          Get.toNamed(errorCodeDetailsScreen);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        leading: SvgPicture.asset("assets/images/error-details.svg"),
        title: Text(
          title,
          style: const TextStyle(
              color: Color(0xff030206), fontFamily: "OpenMed", fontSize: 14),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subtitle,
              style: const TextStyle(color: Color(0xff7C797A), fontSize: 12),
            ),
            Text(
              "Error Rank: 2",
              style: const TextStyle(color: Color(0xffFFD803), fontSize: 10),
            ),
          ],
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Color(0xff7C797A),
          size: 20,
        ),
      ),
    );
  }
}
