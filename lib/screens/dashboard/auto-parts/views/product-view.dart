import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

import '../../../../controller/ecommerce/ecommerce-state-controller.dart';

class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EcommerceStateController>(builder: (controller) {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
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
                      "Product Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "OpenMed",
                          fontSize: 16),
                    ),
                    PopupMenuButton(
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                              onTap: () {
                                Get.toNamed(productCartScreen);
                              },
                              child: const Row(
                                children: [
                                  Icon(Iconsax.shopping_cart),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Cart")
                                ],
                              )),
                          PopupMenuItem(
                              onTap: () {
                                Get.toNamed(favoriteProductScreen);
                              },
                              child: const Row(
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
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 290,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Color(0xffF8FAFB),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/product-main.png"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Image.asset(
                                          "assets/images/product1.png"),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Image.asset(
                                          "assets/images/product2.png"),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Image.asset(
                                          "assets/images/product3.png"),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Image.asset(
                                          "assets/images/product4.png"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              margin: const EdgeInsets.only(right: 20, top: 20),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Icon(
                                Iconsax.heart5,
                                color: Color(0xffFF4848),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Bosch Oil Filter",
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontFamily: "OpenBold",
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "N 10,850",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Color(0xff7C797A),
                                    color: Color(0xff7C797A),
                                    fontSize: 14,
                                    fontFamily: "OpenMed"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "N 9,850",
                                style: const TextStyle(
                                    color: Color(0xff030206),
                                    fontSize: 18,
                                    fontFamily: "OpenBold"),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "5.0",
                            style: TextStyle(
                                color: Color(0xff7C797A),
                                fontFamily: "OpenMed",
                                fontSize: 12),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xff5E97F6),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xff6DB8A9),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xffDEA39C),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0xff00BFFF),
                                      )),
                                  child: const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Color(0xffF8FAFB),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: const BoxDecoration(
                                    color: Color(0xffF8FAFB),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Iconsax.minus,
                                  color: Color(0xff001F3F),
                                  size: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "1",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xff030206),
                                    fontSize: 16,
                                    fontFamily: "OpenBold"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: const BoxDecoration(
                                    color: Color(0xffF8FAFB),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Iconsax.add,
                                  color: Color(0xff001F3F),
                                  size: 20,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "High-efficiency oil filter designed to remove contaminants from engine oil. Ensures smooth engine performance and extends engine life. Premium spark plugs that provide better fuel efficiency, smoother acceleration, and optimal performance. Ideal for a wide range of vehicles.",
                        textAlign: TextAlign.justify,
                        style:
                            TextStyle(color: Color(0xff7C797A), fontSize: 14),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          
                        },
                        child: const Row(
                          children: [
                            Text(
                              "See More Details",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xff00BFFF),
                                fontSize: 14,
                                fontFamily: "OpenMed"
                              ),
                            ),
                            Icon(
                              Iconsax.arrow_right_3,
                              color: Color(0xff00BFFF),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Buttons().authButtons(
                        title: "Add to Cart",
                        action: (){}
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                )),
              ),
            ],
          )),
        ),
      );
    });
  }
}
