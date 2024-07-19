import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class ProfileInformationScreen extends StatelessWidget {
  const ProfileInformationScreen({super.key});

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
          "Profile Information",
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
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    height: 94,
                    width: 94,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: AssetImage("assets/images/avatar.png")),
                        border: Border.all(color: Color(0xff001F3F))),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff001F3F)),
                      child: const Icon(
                        IconlyBold.camera,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Name",
                      style: TextStyle(
                          color: Color(0xff030206),
                          fontSize: 14,
                          fontFamily: "OpenMed"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Full Name",
                        hintStyle: const TextStyle(
                            color: Color(0xff7C797A), fontFamily: "OpenMed"),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff7C797A), width: 1.5)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff001F3F), width: 1.5)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xffFF0022), width: 1.5)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(
                          color: Color(0xff030206),
                          fontSize: 14,
                          fontFamily: "OpenMed"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Email Address",
                        hintStyle: const TextStyle(
                            color: Color(0xff7C797A), fontFamily: "OpenMed"),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff7C797A), width: 1.5)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff001F3F), width: 1.5)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xffFF0022), width: 1.5)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Phone Number",
                      style: TextStyle(
                          color: Color(0xff030206),
                          fontSize: 14,
                          fontFamily: "OpenMed"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Phone Number",
                        hintStyle: const TextStyle(
                            color: Color(0xff7C797A), fontFamily: "OpenMed"),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff7C797A), width: 1.5)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xff001F3F), width: 1.5)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xffFF0022), width: 1.5)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Buttons().authButtons(
                  title: "Edit Profile",
                  action: () {
                    Get.toNamed(editLoaderScreen);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
