import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/app/app-state-controller.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final AppStateController _appStateController = Get.put(AppStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStateController>(builder: (controller) {
      return Scaffold(
        body: controller.dashboardItems[controller.currentIndex],
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  controller.updateCurrentIndex(0);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (controller.currentIndex == 0)
                        ? Icon(
                            Iconsax.home_25,
                            color: Color(0xff001F3F),
                          )
                        : Icon(
                            Iconsax.home_2,
                            color: Color(0xffAAAAB9),
                          ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Color((controller.currentIndex == 0)
                              ? 0xff001F3F
                              : 0xffAAAAB9)),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  controller.updateCurrentIndex(1);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (controller.currentIndex == 1)
                        ? Icon(
                            IconlyBold.wallet,
                            color: Color(0xff001F3F),
                          )
                        : Icon(
                            IconlyLight.wallet,
                            color: Color(0xffAAAAB9),
                          ),
                    Text(
                      "Wallet",
                      style: TextStyle(
                          color: Color((controller.currentIndex == 1)
                              ? 0xff001F3F
                              : 0xffAAAAB9)),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  controller.updateCurrentIndex(2);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (controller.currentIndex == 2)
                        ? Icon(
                            Iconsax.shop5,
                            color: Color(0xff001F3F),
                          )
                        : Icon(
                            Iconsax.shop,
                            color: Color(0xffAAAAB9),
                          ),
                    Text(
                      "Auto-Parts",
                      style: TextStyle(
                          color: Color((controller.currentIndex == 2)
                              ? 0xff001F3F
                              : 0xffAAAAB9)),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  controller.updateCurrentIndex(3);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (controller.currentIndex == 3)
                        ? Icon(
                            IconlyBold.setting,
                            color: Color(0xff001F3F),
                          )
                        : Icon(
                            IconlyLight.setting,
                            color: Color(0xffAAAAB9),
                          ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          color: Color((controller.currentIndex == 3)
                              ? 0xff001F3F
                              : 0xffAAAAB9)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
            height: 84,
            width: 84,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xff00172F),
                border: Border.all(color: const Color(0xffE6E9EC), width: 6)),
            child: Center(child: SvgPicture.asset("assets/images/scan.svg"))),
      );
    });
  }
}
