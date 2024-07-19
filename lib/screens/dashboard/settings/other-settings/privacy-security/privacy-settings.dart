import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacySettingScreen extends StatelessWidget {
  const PrivacySettingScreen({super.key});

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
          "Privacy Settings",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Privacy & Data",
                    style: TextStyle(fontSize: 16, fontFamily: "Openmed"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      _tile(
                          title: "Data Collection Preferences",
                          subtitle: "Share diagnostic data with Vescan"),
                      Divider(
                        color: Color(0xffEFEFEF),
                      ),
                      _tile(
                          title: "Personal Data Management",
                          subtitle: "Update their personal information"),
                      Divider(
                        color: Color(0xffEFEFEF),
                      ),
                      _tile(
                          title: "Data Sharing Settings",
                          subtitle:
                              "Controls for sharing data with third-party service"),
                      Divider(
                        color: Color(0xffEFEFEF),
                      ),
                      _tile(
                          title: "Location Services",
                          subtitle: "Enable or disable location tracking"),
                      Divider(
                        color: Color(0xffEFEFEF),
                      ),
                      _tile(
                          title: "Request Data Report",
                          subtitle: "Request a report of all the data Vescan"),
                      Divider(
                        color: Color(0xffEFEFEF),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Clear App Cache",
                style: TextStyle(fontSize: 16, fontFamily: "Openmed"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _tile({title, subtitle}) {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        title: Text(
          title,
          style: const TextStyle(
              color: Color(0xff2B2A2B), fontFamily: "OpenMed", fontSize: 14),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Color(0xff030206), fontSize: 11),
        ),
        trailing: Switch.adaptive(
          value: true,
          onChanged: (value) {},
          activeColor: const Color(0xff00BFFF),
        ));
  }
}
