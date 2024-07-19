import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LegalScreen extends StatelessWidget {
  const LegalScreen({super.key});

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
          "Legal",
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
                "Legal Information",
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
                          "1. Terms of Service",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "OpenMed",
                              color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome to Vescan! By using our services, you agree to comply with and be bound by the following terms and conditions. Please review them carefully. If you do not agree with these terms, you should not use our services.",
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
                          "Key Points:",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "OpenMed",
                              color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Use of Service: Vescan grants you a limited, non-exclusive, non-transferable license to use the app for personal vehicle diagnostics and related services.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          " User Responsibilities: You are responsible for ensuring the accuracy of the information you provide and for maintaining the confidentiality of your account information.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Prohibited Activities: Users are prohibited from using the app for any illegal activities, attempting to disrupt the service, or reverse-engineering the app.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Limitation of Liability: Vescan is not liable for any indirect, incidental, or consequential damages arising from your use of the app.",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "For the full Terms of Service, please visit our Terms of Service.",
                      style: TextStyle(fontSize: 14, color: Color(0xff030206)),
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
