import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:remixicon/remixicon.dart';
import 'package:vescan/controller/home/home-state-controller.dart';
import 'package:vescan/controller/profile/profile-state-controller.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final HomeStateController _homeStateController =
      Get.put(HomeStateController());
  final ProfileStateController _profileStateController =
      Get.put(ProfileStateController());

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((time) {
      _profileStateController.getUserDashboard();
    });

    return GetBuilder<HomeStateController>(builder: (controller) {
      return Scaffold(
        body: controller.dashboardItems[controller.currentIndex],
        bottomNavigationBar: (controller.showDashboard)
            ? null
            : ConvexAppBar(
                backgroundColor: Colors.white,
                color: const Color(0xffAAAAB9),
                height: 75,
                activeColor: const Color(0xff001F3F),
                style: TabStyle.fixedCircle,
                items: [
                  const TabItem(
                      icon: Iconsax.home_2,
                      title: 'Home',
                      activeIcon: Iconsax.home_25),
                  const TabItem(
                      icon: IconlyLight.wallet,
                      title: 'Wallet',
                      activeIcon: IconlyBold.wallet),
                  TabItem(
                      icon: Center(
                          child:
                              SvgPicture.asset("assets/images/ScanLogo.svg")),
                      title: 'Add'),
                  TabItem(
                      icon: SvgPicture.asset("assets/images/auto-part.svg"),
                      title: 'Auto-Parts',
                      activeIcon:
                          SvgPicture.asset("assets/images/auto-part-blue.svg")),
                  const TabItem(
                      icon: Remix.settings_line,
                      title: 'Settings',
                      activeIcon: Remix.settings_fill),
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
