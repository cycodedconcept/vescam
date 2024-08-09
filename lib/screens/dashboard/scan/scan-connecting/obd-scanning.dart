import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class OBDScanningScreen extends StatefulWidget {
  const OBDScanningScreen({super.key});

  @override
  State<OBDScanningScreen> createState() => _OBDScanningScreenState();
}

class _OBDScanningScreenState extends State<OBDScanningScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(scanCompletedScreen);
    });
  }

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
                    "OBD Scanning",
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
              color: const Color(0xff001F3F),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 373,
                          width: 378,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(
                                colors: [
                                  const Color(0xff00BFFF).withOpacity(0),
                                  const Color(0xff00BFFF).withOpacity(0.03),
                                  const Color(0xff00BFFF).withOpacity(0.2),
                                ],
                              )),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RotatedBox(
                                quarterTurns: -45,
                                child: SvgPicture.asset(
                                  "assets/images/vehicle-diagnostic.svg",
                                  height: 453,
                                  width: 211,
                                ),
                              ),
                              const Text(
                                "OBD Scanning",
                                style: TextStyle(
                                    color: Color(0xff00BFFF),
                                    fontFamily: "OpenMed",
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    _scanTile(
                      title: "Engine System (Completed)",
                      subtitle: "Scanned Items (32) - No error found",
                    ),
                    _scanTile(
                      title: "Engine System (Completed)",
                      subtitle: "Scanned Items (32) - No error found",
                    ),
                    _scanTile(
                      title: "Engine System (Completed)",
                      subtitle: "Scanned Items (32) - No error found",
                    ),
                  ],
                ),
              ),
            )),
          ],
        )),
      ),
    );
  }

  Container _scanTile({title, subtitle}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: Color(0xffF8FAFB), borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: SvgPicture.asset("assets/images/engine.svg"),
        ),
        title: Text(
          title,
          style: const TextStyle(
              color: Color(0xff030206), fontFamily: "OpenMed", fontSize: 14),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Color(0xff00BFFF), fontSize: 10),
        ),
        trailing: const Icon(
          Icons.check_circle_outline,
          color: Color(0xff25D366),
        ),
      ),
    );
  }
}
