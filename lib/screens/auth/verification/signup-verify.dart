import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gif/gif.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:pinput/pinput.dart';
import 'package:vescan/controller/auth/auth-state-controller.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/storage/local-storage.dart';

class SignUpVerifyEmail extends StatefulWidget {
  const SignUpVerifyEmail({super.key});

  @override
  State<SignUpVerifyEmail> createState() => _SignUpVerifyEmailState();
}

class _SignUpVerifyEmailState extends State<SignUpVerifyEmail> {
  bool _isComplete = false;
  String _email = "";

  updateEmail() async {
    _email = await LocalStorage().fetchEmail();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    updateEmail();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(builder: (controller) {
      return LoadingOverlay(
        isLoading: controller.isLoading,
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: SvgPicture.asset("assets/images/back.svg")),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    (controller.showSuccessGif)
                        ? Center(
                            child: Gif(
                                autostart: Autostart.once,
                                placeholder: (context) => const Center(
                                    child: CircularProgressIndicator()),
                                image:
                                    const AssetImage("assets/gif/checked.gif")),
                          )
                        : SvgPicture.asset(
                            "assets/images/phone-verification.svg"),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "We’ve sent you a Mail!",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "OpenBold",
                                fontSize: 24),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                                text:
                                    "Enter the code we’ve sent to your mail at\n$_email",
                                style: const TextStyle(
                                  fontFamily: "Open",
                                  color: Color(0xff030206),
                                  fontSize: 14,
                                ),
                                children: [
                                  WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: InkWell(
                                          onTap: () {},
                                          child: const Text(
                                            "Change Email",
                                            style: TextStyle(
                                                color: Color(0xff00BFFF),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          )))
                                ]),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Enter code",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Pinput(
                                  onCompleted: (value) {
                                    controller.verifyOtp();
                                  },
                                  onChanged: (value) {
                                    controller.updateOtpCode(value);
                                  },
                                  length: 5,
                                  autofocus: true,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  focusedPinTheme: PinTheme(
                                    width: 69,
                                    height: 63,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(7),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(0, 2),
                                              blurRadius: 15,
                                              color: const Color(0xff0409CA)
                                                  .withOpacity(0.08))
                                        ]),
                                  ),
                                  defaultPinTheme: PinTheme(
                                    width: 69,
                                    height: 63,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                            color: const Color(0xffF1F1F1))),
                                  ),
                                ),
                                const SizedBox(
                                  height: 100,
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: "Didn’t get the Otp? ",
                                      style: const TextStyle(
                                        fontFamily: "Open",
                                        color: Color(0xff030206),
                                        fontSize: 14,
                                      ),
                                      children: [
                                        WidgetSpan(
                                            alignment:
                                                PlaceholderAlignment.middle,
                                            child: InkWell(
                                                onTap: () {},
                                                child: const Text(
                                                  "Send again",
                                                  style: TextStyle(
                                                      color: Color(0xff001F3F),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ],
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
