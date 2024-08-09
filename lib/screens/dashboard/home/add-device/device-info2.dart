import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class DeviceInfoScreen2 extends StatelessWidget {
  const DeviceInfoScreen2({super.key});

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
                    "Add New Device",
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
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Device Information",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "OpenMed",
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Device ID",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 14,
                                  fontFamily: "OpenMed"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Device ID",
                                hintStyle: TextStyle(
                                    color: Color(0xff7C797A),
                                    fontFamily: "OpenMed"),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xff7C797A), width: 1.5)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xff001F3F), width: 1.5)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xffFF0022), width: 1.5)),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Device IMEI",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 14,
                                  fontFamily: "OpenMed"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Device IMEI",
                                hintStyle: TextStyle(
                                    color: Color(0xff7C797A),
                                    fontFamily: "OpenMed"),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xff7C797A), width: 1.5)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xff001F3F), width: 1.5)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xffFF0022), width: 1.5)),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "SIM Number",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 14,
                                  fontFamily: "OpenMed"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter SIM Number",
                                hintStyle: TextStyle(
                                    color: Color(0xff7C797A),
                                    fontFamily: "OpenMed"),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xff7C797A), width: 1.5)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xff001F3F), width: 1.5)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xffFF0022), width: 1.5)),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Network",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 14,
                                  fontFamily: "OpenMed"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Network",
                                hintStyle: TextStyle(
                                    color: Color(0xff7C797A),
                                    fontFamily: "OpenMed"),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xff7C797A), width: 1.5)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xff001F3F), width: 1.5)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Color(0xffFF0022), width: 1.5)),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Buttons().alternativeButtons(
                          title: "Save Device",
                          action: () {
                            Get.toNamed(addDeviceLoadingScreen);
                          })
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
