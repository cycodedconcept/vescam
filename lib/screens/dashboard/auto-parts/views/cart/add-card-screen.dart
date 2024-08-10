import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/screens/dashboard/auto-parts/views/cart/emptyCartView.dart';
import 'package:vescan/screens/dashboard/auto-parts/views/cart/product-cart-view.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

import '../../../../../controller/ecommerce/ecommerce-state-controller.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EcommerceStateController>(builder: (controller) {
      return Scaffold(
        backgroundColor: const Color(0xffF8FAFB),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SafeArea(
              child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Iconsax.arrow_left_2,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    const Text(
                      "Add Card",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "OpenMed",
                          fontSize: 16),
                    ),
                    PopupMenuButton(
                      itemBuilder: (context) {
                        return [
                          const PopupMenuItem(
                              child: Row(
                            children: [
                              Icon(Iconsax.heart),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Favorite")
                            ],
                          )),
                          const PopupMenuItem(
                              child: Row(
                            children: [
                              Icon(Icons.history),
                              SizedBox(
                                width: 10,
                              ),
                              Text("History")
                            ],
                          )),
                          const PopupMenuItem(
                              child: Row(
                            children: [
                              Icon(IconlyLight.search),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Search")
                            ],
                          )),
                        ];
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Card Type",
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "OpenMed"),
                            ),
                            DropdownButton(
                                value: "Mastercard",
                                style: TextStyle(color: Color(0xff00BFFF)),
                                items: const [
                                  DropdownMenuItem(
                                      value: "Mastercard",
                                      child: Text("Mastercard")),
                                  DropdownMenuItem(
                                      value: "Visa", child: Text("Visa")),
                                ],
                                underline: SizedBox(),
                                icon: const Icon(
                                  IconlyLight.arrow_down_2,
                                  color: Colors.black,
                                ),
                                onChanged: (value) {})
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "assets/images/atm-card.png",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Card Name",
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
                                  hintStyle: TextStyle(
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
                                "Card Number",
                                style: TextStyle(
                                    color: Color(0xff030206),
                                    fontSize: 14,
                                    fontFamily: "OpenMed"),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
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
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Expiration Date",
                                      style: TextStyle(
                                          color: Color(0xff030206),
                                          fontSize: 14,
                                          fontFamily: "OpenMed"),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            color: Color(0xff7C797A),
                                            fontFamily: "OpenMed"),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 0),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Color(0xff7C797A),
                                                width: 1.5)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Color(0xff001F3F),
                                                width: 1.5)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Color(0xffFF0022),
                                                width: 1.5)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "CVV",
                                      style: TextStyle(
                                          color: Color(0xff030206),
                                          fontSize: 14,
                                          fontFamily: "OpenMed"),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            color: Color(0xff7C797A),
                                            fontFamily: "OpenMed"),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 0),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Color(0xff7C797A),
                                                width: 1.5)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Color(0xff001F3F),
                                                width: 1.5)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Color(0xffFF0022),
                                                width: 1.5)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Buttons().authButtons(title: "Add Card", action: () {}),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ))),
              ),
            ],
          )),
        ),
      );
    });
  }
}
