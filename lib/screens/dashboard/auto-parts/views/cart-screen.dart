import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../controller/ecommerce/ecommerce-state-controller.dart';

class ProductCartScreen extends StatelessWidget {
  const ProductCartScreen({super.key});

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
                      "Favourites",
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
                    child: Column()
                  ),
                ),
              ),
            ],
          )),
        ),
      );
    });
  }
}