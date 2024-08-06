import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/wallet/wallet-state-controller.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WalletStateController>(builder: (controller) {
      return Scaffold(
        backgroundColor: const Color(0xffF8FAFB),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Iconsax.arrow_left_2,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                      Text(
                        "Transaction History",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "OpenMed",
                            fontSize: 16),
                      ),
                      Icon(
                        IconlyLight.notification,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          textInputAction: TextInputAction.search,
                          decoration: InputDecoration(
                            hintText: "Search Bank Name",
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Color(0xffADADAD),
                            ),
                            hintStyle: const TextStyle(
                                color: Color(0xffADADAD),
                                fontFamily: "OpenMed"),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Color(0xffF1F1F1), width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Color(0xffF1F1F1), width: 1)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 57,
                        width: 63,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffF1F1F1)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          IconlyLight.filter,
                          color: Color(0xffADADAD),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: List.generate(controller.transactions.length,
                          (index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/transfer-to.svg"),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                controller.transactions[index]
                                                    ["title"],
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    color: Color(0xff030206),
                                                    fontFamily: "OpenMed",
                                                    fontSize: 13),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                controller.transactions[index]
                                                    ["date"],
                                                style: const TextStyle(
                                                    color: Color(0xff7C797A),
                                                    fontFamily: "Open",
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "N${controller.transactions[index]["amount"]}",
                                        style: const TextStyle(
                                            color: Color(0xff030206),
                                            fontFamily: "OpenMed",
                                            fontSize: 13),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        controller.transactions[index]
                                            ["status"],
                                        style: const TextStyle(
                                            color: Color(0xff25D366),
                                            fontFamily: "Open",
                                            fontSize: 10),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        );
                      }),
                    ),
                  )),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
