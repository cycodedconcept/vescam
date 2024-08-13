import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class PaymentInformationScreen extends StatelessWidget {
  const PaymentInformationScreen({super.key});

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
          "App Plan",
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
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Set a subscription plan for your Vescan Device (select at least on plan)",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "OpenMed",
                      color: Color(0xff030206)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 315,
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/Monthly.svg"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Radio(
                                activeColor: Color(0xff00BFFF),
                                value: "priced",
                                groupValue: "priced",
                                onChanged: (value) {}),
                            const Text(
                              "Priced",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff030206)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Radio(
                                activeColor: const Color(0xff00BFFF),
                                value: "free",
                                groupValue: "priced",
                                onChanged: (value) {}),
                            const Text(
                              "Free",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff8D9198)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: DropdownButtonFormField(
                            items: const [
                              DropdownMenuItem(value: "USD", child: Text("USD"))
                            ],
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              // hintText: "USD",
                              hintStyle:
                                  const TextStyle(color: Color(0xff8D9198)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xffFF0022), width: 1.5)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 6,
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "\$120",
                              hintStyle:
                                  const TextStyle(color: Color(0xff8D9198)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xffFF0022), width: 1.5)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 315,
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/quaterly.svg"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Radio(
                                activeColor: Color(0xff00BFFF),
                                value: "priced",
                                groupValue: "priced",
                                onChanged: (value) {}),
                            const Text(
                              "Priced",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff030206)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Radio(
                                activeColor: const Color(0xff00BFFF),
                                value: "free",
                                groupValue: "priced",
                                onChanged: (value) {}),
                            const Text(
                              "Free",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff8D9198)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: DropdownButtonFormField(
                            items: const [
                              DropdownMenuItem(value: "USD", child: Text("USD"))
                            ],
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              // hintText: "USD",
                              hintStyle:
                                  const TextStyle(color: Color(0xff8D9198)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xffFF0022), width: 1.5)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 6,
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "\$120",
                              hintStyle:
                                  const TextStyle(color: Color(0xff8D9198)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xffFF0022), width: 1.5)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 315,
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/yearly.svg"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Radio(
                                activeColor: Color(0xff00BFFF),
                                value: "priced",
                                groupValue: "priced",
                                onChanged: (value) {}),
                            const Text(
                              "Priced",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff030206)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Radio(
                                activeColor: const Color(0xff00BFFF),
                                value: "free",
                                groupValue: "priced",
                                onChanged: (value) {}),
                            const Text(
                              "Free",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff8D9198)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: DropdownButtonFormField(
                            items: const [
                              DropdownMenuItem(value: "USD", child: Text("USD"))
                            ],
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              // hintText: "USD",
                              hintStyle:
                                  const TextStyle(color: Color(0xff8D9198)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xffFF0022), width: 1.5)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 6,
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "\$120",
                              hintStyle:
                                  const TextStyle(color: Color(0xff8D9198)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xffFF0022), width: 1.5)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "All Prices are inclusive of 0% tax",
                  style: TextStyle(fontSize: 14.24, color: Color(0xff7C797A)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "Setup Fee (optional)",
                    style: TextStyle(
                        fontSize: 16.61,
                        color: Color(0xff030206),
                        fontFamily: "OpenMed"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField(
                            items: const [
                              DropdownMenuItem(value: "USD", child: Text("USD"))
                            ],
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              // hintText: "USD",
                              hintStyle:
                                  const TextStyle(color: Color(0xff8D9198)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xffFF0022), width: 1.5)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "\$120",
                              hintStyle:
                                  const TextStyle(color: Color(0xff8D9198)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff8D9198), width: 1.5)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xffFF0022), width: 1.5)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "Applicable tax",
                    style: TextStyle(
                        fontSize: 16.61,
                        color: Color(0xff030206),
                        fontFamily: "OpenMed"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 75,
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "10%",
                        hintStyle: const TextStyle(color: Color(0xff8D9198)),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(0xff8D9198), width: 1.5)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(0xff8D9198), width: 1.5)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(0xffFF0022), width: 1.5)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Buttons().borderButton(title: "Back", action: () {}),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 6,
                    child: Buttons()
                        .borderButton(title: "Save As Draft", action: () {}),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 4,
                    child:
                        Buttons().authButtons(title: "Publish", action: () {}),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
