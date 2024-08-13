import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gif/gif.dart';
import 'package:pinput/pinput.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class ForgotPasswordVerifyEmail extends StatefulWidget {
  const ForgotPasswordVerifyEmail({super.key});

  @override
  State<ForgotPasswordVerifyEmail> createState() =>
      _ForgotPasswordVerifyEmailState();
}

class _ForgotPasswordVerifyEmailState extends State<ForgotPasswordVerifyEmail> {
  bool _isComplete = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
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
              (_isComplete)
                  ? Center(
                      child: Gif(
                          autostart: Autostart.once,
                          placeholder: (context) =>
                              const Center(child: CircularProgressIndicator()),
                          image: const AssetImage("assets/gif/checked.gif")),
                    )
                  : SvgPicture.asset("assets/images/phone-verification.svg"),
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
                              "Enter the code we’ve sent to your mail at\nscholarkamaldeen@gmail.com ",
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
                              setState(() {
                                _isComplete = true;
                                Future.delayed(const Duration(seconds: 2), () {
                                  Get.toNamed(login);
                                });
                              });
                            },
                            length: 5,
                            autofocus: true,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                text: "Didn’t get the SMS? ",
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
                                            "Send again",
                                            style: TextStyle(
                                                color: Color(0xff001F3F),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
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
    );
  }
}
