import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:vescan/controller/profile/profile-state-controller.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class ProfileInformationScreen extends StatelessWidget {
  ProfileInformationScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileStateController>(builder: (controller) {
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
            child: Form(
              key: _formKey,
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
                          controller: controller.name,
                          validator: ValidationBuilder().build(),
                          decoration: InputDecoration(
                            hintText: "Enter Full Name",
                            hintStyle: const TextStyle(
                                color: Color(0xff7C797A),
                                fontFamily: "OpenMed"),
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
                            focusedErrorBorder: OutlineInputBorder(
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
                          controller: controller.email,
                          validator: ValidationBuilder().email().build(),
                          decoration: InputDecoration(
                            hintText: "Enter Email Address",
                            hintStyle: const TextStyle(
                                color: Color(0xff7C797A),
                                fontFamily: "OpenMed"),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xff7C797A), width: 1.5)),
                            disabledBorder: OutlineInputBorder(
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
                            focusedErrorBorder: OutlineInputBorder(
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
                          controller: controller.phoneNumber,
                          validator: ValidationBuilder().build(),
                          decoration: InputDecoration(
                            hintText: "Enter Phone Number",
                            hintStyle: const TextStyle(
                                color: Color(0xff7C797A),
                                fontFamily: "OpenMed"),
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
                            focusedErrorBorder: OutlineInputBorder(
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
                          "State",
                          style: TextStyle(
                              color: Color(0xff030206),
                              fontSize: 14,
                              fontFamily: "OpenMed"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField(
                          value: controller.user.state == null
                              ? null
                              : controller.user.state,
                          onChanged: (value) {
                            controller.updateState(value);
                          },
                          items: controller
                              .getStatesForCountry(controller.user.country!)
                              .map((e) {
                            return DropdownMenuItem(
                                value: e["name"], child: Text(e["name"]));
                          }).toList(),
                          decoration: InputDecoration(
                            hintText: "Select State",
                            hintStyle: const TextStyle(
                                color: Color(0xff7C797A),
                                fontFamily: "OpenMed"),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Color(0xff7C797A), width: 1.5)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xff001F3F), width: 1.5)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xffFF0022), width: 1.5)),
                            focusedErrorBorder: OutlineInputBorder(
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
                          "Address",
                          style: TextStyle(
                              color: Color(0xff030206),
                              fontSize: 14,
                              fontFamily: "OpenMed"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: controller.address,
                          validator: ValidationBuilder().build(),
                          decoration: InputDecoration(
                            hintText: "Enter Full Address",
                            hintStyle: const TextStyle(
                                color: Color(0xff7C797A),
                                fontFamily: "OpenMed"),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Color(0xff7C797A), width: 1.5)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xff001F3F), width: 1.5)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xffFF0022), width: 1.5)),
                            focusedErrorBorder: OutlineInputBorder(
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
                        if (_formKey.currentState!.validate()) {
                          controller.updateCustomerDetails();
                          Get.toNamed(editLoaderScreen);
                        } else {}
                      })
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
