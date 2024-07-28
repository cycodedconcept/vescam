import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

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
              _settingsList(title: "Speed", action: () {}, icon: Icons.speed),
              _settingsList(
                  title: "Revolutions Per Minute (RPM)",
                  action: () {},
                  icon: Icons.speed_outlined),
              _settingsList(
                  title: "Engine Load",
                  action: () {},
                  icon: Icons.car_repair_outlined),
              _settingsList(
                  title: "Battery Voltage",
                  action: () {},
                  icon: Iconsax.battery_3full),
              _settingsList(
                  title: "Coolant Temperature",
                  action: () {},
                  icon: Icons.thermostat_auto),
              _settingsList(
                  title: "Intake Air Temperature",
                  action: () {},
                  icon: Icons.thermostat_outlined),
              _settingsList(
                  title: "Fuel Level",
                  action: () {},
                  icon: Iconsax.gas_station),
              _settingsList(
                  title: "Throttle",
                  action: () {},
                  icon: Icons.car_repair_outlined),
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
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
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
