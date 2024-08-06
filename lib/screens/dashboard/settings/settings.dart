import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color(0xff001F3F),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  )),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Iconsax.edit,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Basic Information",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenMed",
                            fontSize: 16),
                      ),
                    ],
                  ),
                 const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/avatar.png"))),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kamaldeen Olakunle Okelola",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "OpenBold",
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "scholarkamaldeen@gmail.com",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "OpenMed",
                                color: Color(0xff00BFFF)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "+2348067442371",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "OpenMed",
                                color: Color(0xffFFD803)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    _settingTile(
                        title: "Vehicle Information",
                        action: () {
                          Get.toNamed(vehicleInfoScreen);
                        },
                        icon: Icons.document_scanner_outlined),
                    _settingTile(
                        title: "Registered Devices",
                        action: () {},
                        icon: Icons.phone_android_outlined),
                    _settingTile(
                        title: "Set PIDs Threshold",
                        action: () {
                          Get.toNamed(setPidThresholdsScreen);
                        },
                        icon: Icons.history),
                    _settingTile(
                        title: "Favorite Mechanics/Towing Vehicles",
                        action: () {},
                        icon: Icons.favorite_outline),
                    _settingTile(
                        title: "Notifications",
                        action: () {
                          Get.toNamed(notificationSettingsScreen);
                        },
                        icon: Icons.notifications_active_outlined),
                    _settingTile(
                        title: "Payment Information",
                        action: () {},
                        icon: Iconsax.information),
                    _settingTile(
                        title: "Other Settings",
                        action: () {
                          Get.toNamed(otherSettingsScreen);
                        },
                        icon: Icons.settings_outlined),
                    _settingTile(
                        title: "Supports and Help",
                        action: () {
                          Get.toNamed(supportScreen);
                        },
                        icon: Icons.help_outline),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _settingTile({title, action, icon}) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
      decoration: BoxDecoration(
          color: const Color(0xffF8FAFB),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        onTap: action,
        leading: Icon(
          icon,
          color: const Color(0xff7C797A),
        ),
        title: Text(
          title,
          style: const TextStyle(
              color: Color(0xff2B2A2B), fontFamily: "OpenMed", fontSize: 14),
        ),
        trailing: const Icon(
          Iconsax.arrow_right_3,
          color: Color(0xff7C797A),
        ),
      ),
    );
  }


}
