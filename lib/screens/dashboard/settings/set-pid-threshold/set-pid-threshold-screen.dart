import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/widgets/pop-up/set-pid-modal.dart';

class SetPidThresholdScreen extends StatelessWidget {
  const SetPidThresholdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child:
              const Icon(Icons.arrow_back_ios, color: Colors.black, size: 24),
        ),
        title: const Text(
          "Set PIDs Threshold",
          style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Set Threshold for PIDs",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "OpenMed",
                      color: Color(0xff030206)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _settingsList(
                  title: "Speed",
                  action: () {
                    SetPidModalSheet()
                        .show(context, "Set Speed Threshold", "km/h");
                  },
                  icon: "speed-small"),
              _settingsList(
                  title: "Revolutions Per Minute (RPM)",
                  action: () {
                    SetPidModalSheet()
                        .show(context, "Set RPM Threshold", "RPM");
                  },
                  icon: "rpm"),
              _settingsList(
                  title: "Engine Load",
                  action: () {
                    SetPidModalSheet()
                        .show(context, "Set Speed Threshold", "%");
                  },
                  icon: "engine"),
              _settingsList(
                  title: "Battery Voltage",
                  action: () {
                    SetPidModalSheet()
                        .show(context, "Set Battery Voltage Threshold", "V");
                  },
                  icon: "battery"),
              _settingsList(
                  title: "Coolant Temperature",
                  action: () {
                    SetPidModalSheet().show(
                        context, "Set Coolant Temperature Threshold", "F");
                  },
                  icon: "cool-temp"),
              _settingsList(
                  title: "Intake Air Temperature",
                  action: () {
                    SetPidModalSheet().show(
                        context, "Set Intake Air Temperature Threshold", "F");
                  },
                  icon: "temperature"),
              _settingsList(
                  title: "Fuel Level",
                  action: () {
                    SetPidModalSheet()
                        .show(context, "Set Fuel Level Threshold", "%");
                  },
                  icon: "fuelpump"),
              _settingsList(
                  title: "Throttle",
                  action: () {
                    SetPidModalSheet()
                        .show(context, "Set Throttle Threshold", "%");
                  },
                  icon: "throttle_small"),
            ],
          ),
        ),
      ),
    );
  }

  Container _settingsList({title, action, icon}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: const Color(0xffF8FAFB),
          borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        onTap: action,
        leading: Container(
            height: 39,
            width: 39,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: Center(
              child: SvgPicture.asset("assets/images/$icon.svg"),
            )),
        title: Text(
          title,
          style: const TextStyle(
              color: Color(0xff2B2A2B), fontFamily: "OpenMed", fontSize: 14),
        ),
        trailing: const Icon(
          Iconsax.arrow_right_3,
          color: Color(0xffADADAD),
        ),
      ),
    );
  }
}
