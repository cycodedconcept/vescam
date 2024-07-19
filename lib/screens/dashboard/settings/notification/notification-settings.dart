import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

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
          "Notifications",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Common",
                    style: TextStyle(fontSize: 16, fontFamily: "Openmed"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF8FAFB),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        _tile(
                          title: "General Notification",
                        ),
                        _tile(
                          title: "Sound",
                        ),
                        _tile(
                          title: "Vibrate",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "System & Services Updates",
                    style: TextStyle(fontSize: 16, fontFamily: "Openmed"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF8FAFB),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        _tile(
                          title: "App Updates",
                        ),
                        _tile(
                          title: "PIDs Threshold",
                        ),
                        _tile(
                          title: "Promotion",
                        ),
                        _tile(
                          title: "New Features",
                        ),
                        _tile(
                          title: "Payment Request",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Others",
                    style: TextStyle(fontSize: 16, fontFamily: "Openmed"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF8FAFB),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        _tile(
                          title: "New Service Available",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _tile({title}) {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        title: Text(
          title,
          style: const TextStyle(
              color: Color(0xff2B2A2B), fontFamily: "OpenMed", fontSize: 14),
        ),
        trailing: Switch.adaptive(
          value: true,
          onChanged: (value) {},
          activeColor: Color(0xff00BFFF),
        ));
  }
}
