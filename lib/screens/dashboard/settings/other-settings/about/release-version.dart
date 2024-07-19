import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ReleaseVersionScreen extends StatelessWidget {
  const ReleaseVersionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
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
          "Release Notes",
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
                height: 20,
              ),
              const Text(
                "What's New in Version 1.0.5",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "OpenMed",
                    color: Color(0xff030206)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New Features",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "OpenMed",
                              color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Introduced real-time vehicle diagnostics for quicker and more accurate fault detection.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Enhanced user interface for a smoother and more intuitive experience.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Added a new section for purchasing automobile spare parts directly from the app.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Improvements",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "OpenMed",
                              color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Optimized app performance for faster load times and smoother transitions.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Improved accuracy of location services for better mechanic and towing service recommendations.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Various bug fixes and security enhancements to protect your data.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Upcoming Features",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "OpenMed",
                              color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Integration with third-party services for more extensive repair options.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Customizable notifications to keep you informed about your vehicle's health and maintenance needs.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
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
