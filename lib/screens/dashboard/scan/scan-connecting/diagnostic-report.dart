import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class DiagnosticReportScreen extends StatelessWidget {
  DiagnosticReportScreen({super.key});

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
                  Text(
                    "Diagnostic Report",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  Icon(
                    IconlyLight.notification,
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
                    const Row(
                      children: [
                        Icon(
                          Icons.info_outline_rounded,
                          color: Color(0xffFF0022),
                          size: 40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            "Diagnosis is completed, 5 OBD errors were found.",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "OpenMed",
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
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
                    const SizedBox(
                      height: 40,
                    ),
                    Buttons().authButtons(
                        title: "View Error Details",
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

  Container _scanTile({title, subtitle}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration:
              BoxDecoration(color: Color(0xffF8FAFB), shape: BoxShape.circle),
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
