import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:vescan/controller/auth/auth-state-controller.dart';

import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});

  final AuthStateController _authStateController =
      Get.put(AuthStateController());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(builder: (controller) {
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
            "Change Password",
            style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Expanded(
                    flex: 10,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Current Password",
                                  style: TextStyle(
                                      color: Color(0xff030206),
                                      fontSize: 14,
                                      fontFamily: "OpenMed"),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  onChanged: (value) {
                                    controller.updatePassword(value);
                                  },
                                  validator: ValidationBuilder().build(),
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          controller.toggleShowPassword();
                                        },
                                        icon: Icon(controller.showPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility)),
                                    hintText: "Enter Current Password",
                                    hintStyle: const TextStyle(
                                        color: Color(0xff7C797A),
                                        fontFamily: "OpenMed"),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 0),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xff7C797A),
                                            width: 1.5)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xff001F3F),
                                            width: 1.5)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xffFF0022),
                                            width: 1.5)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xffFF0022),
                                            width: 1.5)),
                                  ),
                                  obscureText: !controller.showPassword,
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
                                  "New Password",
                                  style: TextStyle(
                                      color: Color(0xff030206),
                                      fontSize: 14,
                                      fontFamily: "OpenMed"),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  onChanged: (value) {
                                    controller.updateNewPassword(value);
                                  },
                                  validator: ValidationBuilder().build(),
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          controller.toggleShowPassword();
                                        },
                                        icon: Icon(controller.showPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility)),
                                    hintText: "Enter New Password",
                                    hintStyle: const TextStyle(
                                        color: Color(0xff7C797A),
                                        fontFamily: "OpenMed"),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 0),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xff7C797A),
                                            width: 1.5)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xff001F3F),
                                            width: 1.5)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xffFF0022),
                                            width: 1.5)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xffFF0022),
                                            width: 1.5)),
                                  ),
                                  obscureText: !controller.showPassword,
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
                                  "Confirm New Password",
                                  style: TextStyle(
                                      color: Color(0xff030206),
                                      fontSize: 14,
                                      fontFamily: "OpenMed"),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  onChanged: (value) {
                                    controller.updateConfirmPassword(value);
                                  },
                                  validator: ValidationBuilder().build(),
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          controller.toggleShowPassword();
                                        },
                                        icon: Icon(controller.showPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility)),
                                    hintText: "Re-enter Password",
                                    hintStyle: const TextStyle(
                                        color: Color(0xff7C797A),
                                        fontFamily: "OpenMed"),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 0),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xff7C797A),
                                            width: 1.5)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xff001F3F),
                                            width: 1.5)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xffFF0022),
                                            width: 1.5)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Color(0xffFF0022),
                                            width: 1.5)),
                                  ),
                                  obscureText: !controller.showPassword,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Buttons().authButtons(
                          title: "Change",
                          action: () {
                            if (_formKey.currentState!.validate()) {
                              controller.changePassword();
                              Get.toNamed(changePasswordLoaderScreen);
                            } else {
                              AutovalidateMode.disabled;
                            }
                          }), 
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
