import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vescan/controller/home/home-state-controller.dart';

class CarDashboardView extends StatelessWidget {
  const CarDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return GetBuilder<HomeStateController>(builder: (controller) {
        return Column(
          children: [
            SvgPicture.asset("assets/images/dashboard.svg"),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RotatedBox(
                  quarterTurns: 45,
                  child: Switch.adaptive(
                      value: controller.showDashboard,
                      activeColor: const Color(0xff00BFFF),
                      onChanged: (value) {
                        controller.toggleShowDashboard();
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      });
    });
  }
}
