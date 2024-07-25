import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../controller/ecommerce/ecommerce-state-controller.dart';

class FavoritesViewScreen extends StatelessWidget {
  const FavoritesViewScreen({super.key});

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
                              Icon(Iconsax.shopping_cart),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Cart")
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
                        const Row(
                          children: [
                             Text(
                              "Saved Items",
                              style: const TextStyle(
                                fontFamily: "OpenMed",
                                color: Color(0xff030206),
                                fontSize: 16,
                              ),
                            ),
     
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GridView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: controller.parts.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 20,
                                    mainAxisExtent: 207,
                                    mainAxisSpacing: 20),
                            itemBuilder: (context, index) {
                              return Material(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 7,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              image: DecorationImage(
                                                  image: AssetImage(controller
                                                      .parts[index]["image"]),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 4,
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    controller.parts[index]
                                                        ["name"],
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xff030206),
                                                        fontSize: 12,
                                                        fontFamily: "OpenBold"),
                                                  )),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  const Icon(
                                                    Iconsax.heart,
                                                    color: Color(0xffFF9900),
                                                    size: 20,
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                      child: Row(
                                                    children: [
                                                      Text(
                                                        controller.parts[index]
                                                            ["price"],
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: const TextStyle(
                                                            color: Color(
                                                                0xff030206),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "OpenBold"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          controller
                                                                  .parts[index]
                                                              ["oldPrice"],
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: const TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .lineThrough,
                                                              decorationColor:
                                                                  Color(
                                                                      0xff7C797A),
                                                              color: Color(
                                                                  0xff7C797A),
                                                              fontSize: 10,
                                                              fontFamily:
                                                                  "OpenMed"),
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        controller.parts[index]
                                                            ["rating"],
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: const TextStyle(
                                                            color: Color(
                                                                0xff7C797A),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "OpenBold"),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        color:
                                                            Color(0xffFFD803),
                                                        size: 20,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              );
                            }),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
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