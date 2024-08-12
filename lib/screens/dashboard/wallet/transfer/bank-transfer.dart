import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class BankTransferScreen extends StatelessWidget {
  const BankTransferScreen({super.key});

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
                    "Bank Transfer",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(notificationScreen);
                    },
                    child: const Icon(
                      Iconsax.notification,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            _actionsTile(
                                title: "706 513 3419",
                                subtitle: "Vescan Wallet Number",
                                icon: IconlyLight.download,
                                action: () {
                                  Get.toNamed(bankTransferScreen);
                                }),
                            const Divider(
                              color: Color(0xffDEDEDE),
                            ),
                            _actionsTile(
                                title: "Vescan Wallet Service",
                                subtitle: "Vescan Wallet",
                                icon: IconlyLight.download,
                                action: () {
                                  Get.toNamed(bankTransferScreen);
                                }),
                            const Divider(
                              color: Color(0xffDEDEDE),
                            ),
                            _actionsTile(
                                title: "Kamolideen O. Okelolame",
                                subtitle: "Name",
                                icon: IconlyLight.download,
                                action: () {
                                  Get.toNamed(bankTransferScreen);
                                }),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffD9F5FF),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Center(
                                    child: Text(
                                      "Copy Number",
                                      style: TextStyle(
                                          color: Color(0xff00BFFF),
                                          fontFamily: "OpenMed",
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                    child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff00BFFF),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Center(
                                    child: Text(
                                      "Tap to Dial",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "OpenMed",
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Add money via bank transfer in just 3 steps",
                              style: TextStyle(
                                  color: Color(0xff001F3F),
                                  fontSize: 16,
                                  fontFamily: "OpenMed"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "1. Copy the account details above - 706 513 3419 is your Wallet Account Number",
                              style: TextStyle(
                                  color: Color(0xff7C797A),
                                  fontSize: 16,
                                  fontFamily: "Open"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "2. Open the bank app you want to transfer money from",
                              style: TextStyle(
                                  color: Color(0xff7C797A),
                                  fontSize: 16,
                                  fontFamily: "Open"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "3. Transfer the details amount to your Vescan Wallet",
                              style: TextStyle(
                                  color: Color(0xff7C797A),
                                  fontSize: 16,
                                  fontFamily: "Open"),
                            ),
                          ],
                        ),
                      )
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

  Container _actionsTile({title, subtitle, action, icon}) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: action,
        leading: Icon(
          icon,
          color: Colors.black,
        ),
        title: Text(
          subtitle,
          style: const TextStyle(color: Color(0xff7C797A), fontSize: 11),
        ),
        subtitle: Text(
          title,
          style: const TextStyle(
              color: Color(0xff2B2A2B), fontFamily: "OpenBold", fontSize: 14),
        ),
      ),
    );
  }
}
