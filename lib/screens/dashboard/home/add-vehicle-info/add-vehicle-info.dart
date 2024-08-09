import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class AddVehicleInformationScreen extends StatelessWidget {
  const AddVehicleInformationScreen({super.key});

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
                    "Vehicle Information",
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
                        "Input Vehicle Information",
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
                              "Brand",
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
                                hintText: "Enter Brand Name",
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
                              "Model",
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
                                hintText: "Enter Vehicle Model",
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
                              "Year",
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
                                hintText: "Enter Vehicle Year",
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
                              "Chassis Number",
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
                                hintText: "Enter Vehicle Chassis Number",
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
                              "Vehicle Identification Number",
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
                                hintText: "Enter Vehicle Identification Number",
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Vehicle Type",
                            style: TextStyle(
                                color: Color(0xff030206),
                                fontSize: 14,
                                fontFamily: "OpenMed"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset("assets/images/suvs.png"),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "SUVs",
                                      style: TextStyle(
                                          color: Color(0xff7C797A),
                                          fontSize: 12,
                                          fontFamily: "OpenMed"),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Image.asset("assets/images/sedans.png"),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Sedans",
                                      style: TextStyle(
                                          color: Color(0xff7C797A),
                                          fontSize: 12,
                                          fontFamily: "OpenMed"),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Image.asset("assets/images/sports-car.png"),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Sport Cars",
                                      style: TextStyle(
                                          color: Color(0xff7C797A),
                                          fontSize: 12,
                                          fontFamily: "OpenMed"),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Buttons().authButtons(
                          title: "Proceed",
                          action: () {
                            Get.toNamed(addVehicleLoadingScreen);
                          }),
                      const SizedBox(
                        height: 30,
                      ),
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
