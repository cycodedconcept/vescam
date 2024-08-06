import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/screens/dashboard/wallet/add-card-details/tab-view/add-bank-account.dart';
import 'package:vescan/screens/dashboard/wallet/add-card-details/tab-view/add-bank-card.dart';

class AddCardDetailsScreen extends StatelessWidget {
  const AddCardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
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
                      child: const Icon(
                        Iconsax.arrow_left_2,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    const Text(
                      "Add a Bank Card/Account",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "OpenMed",
                          fontSize: 16),
                    ),
                    const Icon(
                      IconlyLight.notification,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TabBar(
                padding: EdgeInsets.symmetric(horizontal: 20),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Color(0xff00BFFF),
                unselectedLabelColor: Color(0xff030206),
                labelColor: Color(0xff00BFFF),
                dividerHeight: 0,
                tabs: [
                  Tab(
                    text: "Bank Card",
                  ),
                  Tab(
                    text: "Bank Account",
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    AddBankCard(),
                    AddBankAccount()
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}