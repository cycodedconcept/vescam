import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';

import '../../../../../widgets/buttons/buttons.dart';

class UploadFilesForMechanicScreen extends StatelessWidget {
  const UploadFilesForMechanicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Upload Files",
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
                flex: 14,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: const Color(0xffF8FAFB),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 13, vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Upload a Photo/Video and leave a message to explain noticeable symptoms.",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Upload Image/Video",
                                      style: TextStyle(
                                          color: Color(0xff030206),
                                          fontSize: 16,
                                          fontFamily: "OpenMed"),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    DottedBorder(
                                      dashPattern: [9],
                                      color: Color(0xff858585),
                                      borderType: BorderType.RRect,
                                      radius: const Radius.circular(12),
                                      padding: const EdgeInsets.all(6),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                        child: Container(
                                          height: 226,
                                          width: double.infinity,
                                          padding: const EdgeInsets.all(25),
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  "assets/images/image-icon.svg"),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              SizedBox(
                                                height: 60,
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                        elevation: 0,
                                                        backgroundColor:
                                                            const Color(
                                                                0xff00BFFF),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SvgPicture.asset(
                                                            "assets/images/Add Circle.svg"),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        const Text(
                                                          "Upload Photo/Video",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  "Open"),
                                                        ),
                                                      ],
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Your Message",
                                      style: TextStyle(
                                          color: Color(0xff030206),
                                          fontSize: 16,
                                          fontFamily: "OpenMed"),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    TextFormField(
                                      keyboardType: TextInputType.multiline,
                                      maxLines: 12,
                                      minLines: 8,
                                      decoration: InputDecoration(
                                        hintText:
                                            "Type in noticeable symptoms to help further diagnosis",
                                        hintStyle: const TextStyle(
                                            color: Color(0xff7C797A),
                                            fontFamily: "OpenMed"),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 15),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Color(0xff858585),
                                                width: 1)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Color(0xff858585),
                                                width: 1)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Color(0xffFF0022),
                                                width: 1)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Buttons().authButtons(
                      title: "Proceed to Hire Mechanic",
                      action: () {
                        Get.toNamed(mechanicBookingLoading);
                      }),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
