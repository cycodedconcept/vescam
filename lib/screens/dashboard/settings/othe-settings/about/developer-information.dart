import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class DeveloperInformationScreen extends StatelessWidget {
  const DeveloperInformationScreen({super.key});

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
          "Developer Information",
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
              const Text(
                "Developer: Vescan Technologies Inc.",
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
                          "Thank you for using Vescan! We are committed to providing top-notch solutions to help you maintain your vehicle effortlessly. Our team of dedicated developers and engineers work tirelessly to bring you the best in automotive diagnostics and repair services.",
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
                          "Contact Us:",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "OpenMed",
                              color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Email: support@vescantech.com",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Phone: +1 (800) 123-4567",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Address: 1234 Innovation Drive, Tech City, CA 94043, USA",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff030206)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "For more information about our company and future updates, visit our website.",
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
