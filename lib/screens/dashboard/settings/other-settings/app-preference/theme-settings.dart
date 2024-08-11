import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ThemeSettingsScreen extends StatelessWidget {
  const ThemeSettingsScreen({super.key});

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
          "Theme Selection",
          style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Appearance",
                style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/light-screen.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      Radio(
                          activeColor: Color(0xff0376FC),
                          value: "light",
                          groupValue: "light",
                          onChanged: (value) {})
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/dark-screen.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      Radio(
                          activeColor: const Color(0xff0376FC),
                          value: "dark",
                          groupValue: "light",
                          onChanged: (value) {})
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              _settingTile(
                  icon: "assets/images/glasses.svg", title: "Automatic")
            ],
          ),
        ),
      ),
    );
  }

  Container _settingTile({title, action, icon}) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffF8FAFB),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          onTap: action,
          leading: SvgPicture.asset(
            icon,
          ),
          title: Text(
            title,
            style: const TextStyle(
                color: Color(0xff2B2A2B), fontFamily: "OpenMed", fontSize: 14),
          ),
          trailing: Switch.adaptive(
            value: false,
            onChanged: (value) {},
            activeColor: const Color(0xff00BFFF),
          )),
    );
  }
}
