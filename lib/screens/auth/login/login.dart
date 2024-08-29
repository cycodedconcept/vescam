import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:vescan/controller/auth/auth-state-controller.dart';

import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final AuthStateController _authStateController =
      Get.put(AuthStateController());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(builder: (controller) {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset("assets/images/back.svg")),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/logo-2.png"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Log In",
                      style: TextStyle(
                          color: Color(0xff030206),
                          fontFamily: "OpenMed",
                          fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Please enter your information below in order to login to your account",
                      style: TextStyle(color: Color(0xff030206), fontSize: 14),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Email Address",
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
                              controller.updateEmail(value);
                            },
                            validator: ValidationBuilder().email().build(),
                            decoration: InputDecoration(
                              hintText: "Enter Email Address",
                              hintStyle: const TextStyle(
                                  color: Color(0xff7C797A),
                                  fontFamily: "OpenMed"),
                              contentPadding: EdgeInsets.symmetric(
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
                      height: 25,
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Password",
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
                              hintText: "Enter Password",
                              hintStyle: const TextStyle(
                                  color: Color(0xff7C797A),
                                  fontFamily: "OpenMed"),
                              contentPadding: EdgeInsets.symmetric(
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
                            obscureText: !controller.showPassword,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Switch.adaptive(
                              value: controller.isRememberMe,
                              onChanged: (value) {
                                controller.toggleIsRememberMe();
                              },
                              activeColor: const Color(0xff008FBF),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Remember Me",
                              style: TextStyle(
                                  color: Color(0xff7C797A),
                                  fontSize: 14,
                                  fontFamily: "OpenMed"),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(forgotPassword);
                          },
                          child: const Text(
                            "Forget Password?",
                            style: TextStyle(
                                color: Color(0xff030206),
                                fontSize: 14,
                                fontFamily: "OpenMed"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Buttons().authButtons(
                        action: () {
                          if (_formKey.currentState!.validate()) {
                            controller.loginUser();
                            Get.toNamed(loginLoading);
                          } else {
                            AutovalidateMode.disabled;
                          }
                        },
                        title: "Login"),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        "Or",
                        style: TextStyle(
                            color: Color(0xff7C797A),
                            fontSize: 16,
                            fontFamily: "OpenMed"),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Buttons().socialButtons(
                        title: "Sign in with Google",
                        icon: "google.svg",
                        action: () {}),
                    const SizedBox(
                      height: 15,
                    ),
                    Buttons().socialButtons(
                        title: "Sign in with Apple",
                        icon: "apple.svg",
                        action: () {}),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: "Don’t have an account? ",
                            style: const TextStyle(
                              fontFamily: "OpenBold",
                              color: Color(0xff030206),
                              fontSize: 14,
                            ),
                            children: [
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: InkWell(
                                      onTap: () {
                                        Get.toNamed(signup);
                                      },
                                      child: const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: Color(0xff00BFFF),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      )))
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
