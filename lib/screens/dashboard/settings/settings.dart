import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:vescan/controller/profile/profile-state-controller.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class SettingsView extends StatelessWidget {
  SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileStateController>(builder: (controller) {
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
                    InkWell(
                      onTap: () {
                        Get.toNamed(profileInformationScreen);
                      },
                      child: const Row(
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
                                  image:
                                      AssetImage("assets/images/avatar.png"))),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.user.name ?? "",
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: "OpenBold",
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              controller.user.email ?? "",
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: "OpenMed",
                                  color: Color(0xff00BFFF)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              controller.user.phoneNumber ?? "",
                              style: const TextStyle(
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
                      Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 15),
                        decoration: BoxDecoration(
                            color: const Color(0xffF8FAFB),
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          onTap: () {
                            Get.toNamed(vehicleInfoScreen);
                          },
                          leading: SvgPicture.asset("assets/images/note.svg"),
                          title: const Text(
                            "Vehicle Information",
                            style: TextStyle(
                                color: Color(0xff2B2A2B),
                                fontFamily: "OpenMed",
                                fontSize: 14),
                          ),
                          trailing: const Icon(
                            Iconsax.arrow_right_3,
                            color: Color(0xff7C797A),
                          ),
                        ),
                      ),
                      _settingTile(
                          title: "Registered Devices",
                          action: () {},
                          icon: TablerIcons.device_mobile_vibration),
                      _settingTile(
                          title: "Set PIDs Threshold",
                          action: () {
                            Get.toNamed(setPidThresholdsScreen);
                          },
                          icon: Icons.history),
                      _settingTile(
                          title: "Favorite Mechanics/Towing Vehicles",
                          action: () {
                            Get.toNamed(favoriteMechanicScreen);
                          },
                          icon: Icons.favorite_outline),
                      _settingTile(
                          title: "Notifications",
                          action: () {
                            Get.toNamed(notificationSettingsScreen);
                          },
                          icon: Icons.notifications_active_outlined),
                      _settingTile(
                          title: "Payment Information",
                          action: () {
                            Get.toNamed(paymentInformationScreen);
                          },
                          icon: MingCuteIcons.mgc_version_line),
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
    });
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
