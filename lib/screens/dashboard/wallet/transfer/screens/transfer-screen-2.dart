import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class TransferScreen2 extends StatelessWidget {
  const TransferScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color(0xffF8FAFB),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "From",
                      style: TextStyle(
                          color: Color(0xff030206),
                          fontSize: 16,
                          fontFamily: "OpenMed"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff333333).withOpacity(0.04),
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 0)
                          ]),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                      "assets/images/mastercard.png"),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Savings",
                                      style: TextStyle(
                                          color: Color(0xff030206),
                                          fontFamily: "OpenMed",
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "80651278",
                                      style: TextStyle(
                                          color: Color(0xff7C797A),
                                          fontFamily: "OpenMed",
                                          fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              RichText(
                                text: const TextSpan(
                                    text: "N38,650",
                                    style: TextStyle(
                                        color: Color(0xff030206),
                                        fontFamily: "OpenBold",
                                        fontSize: 20),
                                    children: [
                                      TextSpan(
                                        text: ".75",
                                        style: TextStyle(
                                            color: Color(0xff030206),
                                            fontSize: 12,
                                            fontFamily: "OpenMed"),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Iconsax.arrow_right_3)
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: SvgPicture.asset("assets/images/exchange.svg")),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "To",
                      style: TextStyle(
                          color: Color(0xff030206),
                          fontSize: 16,
                          fontFamily: "OpenMed"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff333333).withOpacity(0.04),
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 0)
                          ]),
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: SvgPicture.asset(
                                "assets/images/card-recieve.svg"),
                            title: const Text(
                              "Engr. Hassan Bello",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 16,
                                  fontFamily: "OpenMed"),
                            ),
                            subtitle: const Text(
                              "8076231334 | 04-07-24",
                              style: TextStyle(
                                  color: Color(0xff7C797A),
                                  fontSize: 11,
                                  fontFamily: "Open"),
                            ),
                            trailing: const Icon(IconlyLight.arrow_right_2),
                          ),
                          const Divider(
                            color: Color(0xffF1F1F1),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "You are sending",
                                style: TextStyle(
                                    color: Color(0xff7C797A),
                                    fontSize: 16,
                                    fontFamily: "OpenMed"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: TextField(
                                textDirection: TextDirection.rtl,
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color(0xffD6D5D6),
                                    fontFamily: "OpenMed",
                                    fontSize: 24,
                                  ),
                                ),
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff333333).withOpacity(0.04),
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 0)
                          ]),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Beneficiaries",
                            style: TextStyle(
                                color: Color(0xff030206),
                                fontSize: 16,
                                fontFamily: "OpenMed"),
                          ),
                          Icon(
                            Iconsax.edit_2,
                            color: Color(0xff030206),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Buttons().authButtons(
                      title: "Send Payment",
                      action: () {
                        Get.toNamed(transferConfirmScreen);
                      }),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 48,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff333333).withOpacity(0.04),
                                  offset: Offset(4, 4),
                                  blurRadius: 15,
                                  spreadRadius: 0)
                            ]),
                        child: const Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: Color(0xff030206),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
