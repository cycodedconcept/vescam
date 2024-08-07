import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/app/app-state-controller.dart';
import 'package:vescan/controller/home/home-state-controller.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final AppStateController _appStateController = Get.put(AppStateController());
  final HomeStateController _homeStateController = Get.put(HomeStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStateController>(builder: (controller) {
      return Scaffold(
        body: controller.dashboardItems[controller.currentIndex],
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.white,
          color: const Color(0xffAAAAB9),
          height: 70,
          activeColor: const Color(0xff001F3F),
          style: TabStyle.fixedCircle,
          items: const [
            TabItem(icon: Iconsax.home_25, title: 'Home'),
            TabItem(icon: IconlyBold.wallet, title: 'Wallet'),
            TabItem(icon: Iconsax.scan, title: 'Add'), // Center button
            TabItem(icon: Iconsax.shop5, title: 'Auto-Parts'),
            TabItem(icon: IconlyBold.setting, title: 'Settings'),
          ],
          initialActiveIndex: controller.currentIndex,
          onTap: (int index) {
            controller.updateCurrentIndex(index);
          },
        ),
      );
    });
  }
}
