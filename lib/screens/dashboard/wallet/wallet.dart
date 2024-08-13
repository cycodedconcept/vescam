import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/wallet/wallet-state-controller.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/bottom-sheets/fund-wallet-info.dart';

class WalletView extends StatelessWidget {
  WalletView({super.key});

  final WalletStateController _walletStateController =
      Get.put(WalletStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: Color(0xffF8FAFB), shape: BoxShape.circle),
                        child: const Icon(
                          IconlyBold.wallet,
                          color: Color(0xff001F3F),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: "Hi,\n",
                              style: TextStyle(
                                  color: Color(0xff7C797A),
                                  fontSize: 14,
                                  fontFamily: "Open"),
                              children: [
                            TextSpan(
                                text: "Kamolideen!",
                                style: TextStyle(
                                    color: Color(0xff030206),
                                    fontSize: 14,
                                    fontFamily: "OpenMed"))
                          ]))
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(notificationScreen);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Color(0xff001F3F), shape: BoxShape.circle),
                      child: const Icon(
                        Iconsax.notification,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 20),
                        decoration: BoxDecoration(
                            color: const Color(0xff001F3F),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Wallet Balance",
                                      style: TextStyle(
                                          color: Color(0xffDEDEDE),
                                          fontSize: 14,
                                          fontFamily: "OpenMed"),
                                    ),
                                    Text(
                                      "\$25,500.00",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontFamily: "OpenMed"),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(fundWalletScreen);
                                  },
                                  child: SvgPicture.asset(
                                      "assets/images/fund-wallet.svg"),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Overdraft Balance",
                                      style: TextStyle(
                                          color: Color(0xffDEDEDE),
                                          fontSize: 14,
                                          fontFamily: "OpenMed"),
                                    ),
                                    Text(
                                      "\$0.00",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontFamily: "OpenMed"),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Iconsax.eye_slash,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Balance last updated on 18:19 PM ",
                                  style: TextStyle(
                                    color: Color(0xffDEDEDE),
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.history,
                                  color: Color(0xffDEDEDE),
                                  size: 16,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Account Number",
                                    style: TextStyle(
                                        color: Color(0xff030206),
                                        fontSize: 14,
                                        fontFamily: "OpenMed"),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "7066114751 ",
                                        style: TextStyle(
                                          color: Color(0xff030206),
                                          fontSize: 16,
                                        ),
                                      ),
                                      Icon(
                                        Iconsax.copy,
                                        color: Color(0xff030206),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          FundWalletBottom().show();
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff00BFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 58,
                                width: 79,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        right:
                                            BorderSide(color: Colors.white))),
                                child: const Center(
                                  child: Icon(
                                    Iconsax.info_circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "How to fund your wallet",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "OpenMed"),
                                      ),
                                      Icon(
                                        Iconsax.arrow_right_3,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Actions",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff030206),
                                fontFamily: "OpenMed"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          _actionsTile(
                              title: "Transfer Money",
                              action: () {
                                Get.toNamed(transferMoneyScreen);
                              },
                              icon: IconlyLight.send),
                          _actionsTile(
                              title: "Add Account/Card",
                              action: () {
                                Get.toNamed(addBankDetailsScreen);
                              },
                              icon: Iconsax.direct_inbox),
                          _actionsTile(
                              title: "Pay Bills",
                              action: () {},
                              icon: Iconsax.bill),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Transaction History",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff030206),
                                fontFamily: "OpenMed"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0, 4),
                                    blurRadius: 10,
                                    spreadRadius: 0,
                                    color: const Color(0xff1B1B1B)
                                        .withOpacity(0.03))
                              ],
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "\$344,234.12",
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xff001F3F),
                                            fontFamily: "OpenBold"),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        decoration: BoxDecoration(
                                            color: const Color(0xffE6F9FF),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Row(
                                          children: [
                                            Text(
                                              "July",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff001F3F),
                                                  fontFamily: "OpenMed"),
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Icon(
                                              IconlyLight.arrow_down_2,
                                              color: Color(0xff5D5B5C),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  subtitle: Row(
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: const BoxDecoration(
                                            color: Color(0xff001F3F),
                                            shape: BoxShape.circle),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Cash Inflow",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff7C797A),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$5,234.12",
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xff001F3F),
                                            fontFamily: "OpenBold"),
                                      ),
                                    ],
                                  ),
                                  subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 8,
                                            width: 8,
                                            decoration: const BoxDecoration(
                                                color: Color(0xff001F3F),
                                                shape: BoxShape.circle),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                            "Cash Inflow",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff7C797A),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            "Transaction History",
                                            style: TextStyle(
                                                color: Color(0xff00BFFF),
                                                fontSize: 14),
                                          ),
                                          Icon(
                                            Iconsax.arrow_right_3,
                                            color: Color(0xff00BFFF),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }

  Container _actionsTile({title, action, icon}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 10,
                spreadRadius: 0,
                color: const Color(0xff1B1B1B).withOpacity(0.03))
          ],
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        onTap: action,
        leading: Container(
          height: 39,
          width: 39,
          decoration: const BoxDecoration(
              color: Color(0xffF8FAFB), shape: BoxShape.circle),
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
