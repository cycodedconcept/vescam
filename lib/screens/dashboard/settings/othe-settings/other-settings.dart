import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class OtherSettingsScreen extends StatelessWidget {
  const OtherSettingsScreen({super.key});

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
          "Other Settings",
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              _settingsList(
                  title: "Account Settings",
                  action: () {},
                  icon: Icons.person_outlined),
              _settingsList(
                  title: "App Preferences",
                  action: () {},
                  icon: Icons.help_outline),
              _settingsList(
                  title: "Privacy and Security",
                  action: () {},
                  icon: Iconsax.shield_tick),
              _settingsList(
                  title: "Legal", action: () {}, icon: Iconsax.document_text_1),
              _settingsList(
                  title: "About", action: () {}, icon: Icons.info_outline),
            ],
          ),
        ),
      ),
    );
  }

  Container _settingsList({title, action, icon}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
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
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
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
