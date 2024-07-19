import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AppVersionScreen extends StatelessWidget {
  const AppVersionScreen({super.key});

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
          "App Version",
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Version 1.0.5",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "OpenMed",
                          color: Color(0xff030206)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Welcome to Vescan! You are currently using version 1.0.5 of the app. This version includes the latest features and improvements to ensure you have the best experience diagnosing and managing your vehicle.",
                      style: TextStyle(fontSize: 16, color: Color(0xff030206)),
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
