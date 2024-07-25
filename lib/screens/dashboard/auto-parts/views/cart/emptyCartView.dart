import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/ecommerce/ecommerce-state-controller.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class EmptyCartView extends StatelessWidget {
  const EmptyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EcommerceStateController>(builder: (controller) {
      return SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: const Icon(
                Iconsax.shopping_cart,
                color: Color(0xff001F3F),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Your Cart is Empty",
              style: TextStyle(
                  color: Colors.black, fontSize: 16, fontFamily: "OpenMed"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Browse our catalogue to get best deals Cart is Empty",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Buttons().authButtons(title: "Start Shopping", action: () {}),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recently Viewed",
                      style: const TextStyle(
                        fontFamily: "OpenMed",
                        color: Color(0xff030206),
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Text(
                          "See All",
                          style: TextStyle(
                              color: Color(0xff00BFFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(controller.parts.length, (index) {
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
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              controller.parts[index]["image"]),
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
                                            controller.parts[index]["name"],
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                color: Color(0xff030206),
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
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    color: Color(0xff030206),
                                                    fontSize: 14,
                                                    fontFamily: "OpenBold"),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  controller.parts[index]
                                                      ["oldPrice"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      decorationColor:
                                                          Color(0xff7C797A),
                                                      color: Color(0xff7C797A),
                                                      fontSize: 10,
                                                      fontFamily: "OpenMed"),
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
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    color: Color(0xff7C797A),
                                                    fontSize: 14,
                                                    fontFamily: "OpenBold"),
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Color(0xffFFD803),
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
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recommended for you",
                  style: const TextStyle(
                    fontFamily: "OpenMed",
                    color: Color(0xff030206),
                    fontSize: 16,
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                          color: Color(0xff00BFFF),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: List.generate(controller.parts.length, (index){
            //       return Material(
            //         elevation: 2,
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(12)),
            //         child: Container(
            //           padding: const EdgeInsets.symmetric(
            //               horizontal: 10, vertical: 8),
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(12)),
            //           child: Column(
            //             children: [
            //               Expanded(
            //                 flex: 7,
            //                 child: Container(
            //                   decoration: BoxDecoration(
            //                       borderRadius:
            //                           BorderRadius.circular(6),
            //                       image: DecorationImage(
            //                           image: AssetImage(controller
            //                               .parts[index]["image"]),
            //                           fit: BoxFit.cover)),
            //                 ),
            //               ),
            //               Expanded(
            //                   flex: 4,
            //                   child: Column(
            //                     children: [
            //                       const SizedBox(
            //                         height: 10,
            //                       ),
            //                       Row(
            //                         children: [
            //                           Expanded(
            //                               child: Text(
            //                             controller.parts[index]
            //                                 ["name"],
            //                             overflow:
            //                                 TextOverflow.ellipsis,
            //                             style: const TextStyle(
            //                                 color:
            //                                     Color(0xff030206),
            //                                 fontSize: 12,
            //                                 fontFamily: "OpenBold"),
            //                           )),
            //                           const SizedBox(
            //                             width: 20,
            //                           ),
            //                           const Icon(
            //                             Iconsax.heart,
            //                             color: Color(0xffFF9900),
            //                             size: 20,
            //                           )
            //                         ],
            //                       ),
            //                       const SizedBox(
            //                         height: 10,
            //                       ),
            //                       Row(
            //                         children: [
            //                           Expanded(
            //                               child: Row(
            //                             children: [
            //                               Text(
            //                                 controller.parts[index]
            //                                     ["price"],
            //                                 overflow: TextOverflow
            //                                     .ellipsis,
            //                                 style: const TextStyle(
            //                                     color: Color(
            //                                         0xff030206),
            //                                     fontSize: 14,
            //                                     fontFamily:
            //                                         "OpenBold"),
            //                               ),
            //                               const SizedBox(
            //                                 width: 5,
            //                               ),
            //                               Expanded(
            //                                 child: Text(
            //                                   controller
            //                                           .parts[index]
            //                                       ["oldPrice"],
            //                                   overflow: TextOverflow
            //                                       .ellipsis,
            //                                   style: const TextStyle(
            //                                       decoration:
            //                                           TextDecoration
            //                                               .lineThrough,
            //                                       decorationColor:
            //                                           Color(
            //                                               0xff7C797A),
            //                                       color: Color(
            //                                           0xff7C797A),
            //                                       fontSize: 10,
            //                                       fontFamily:
            //                                           "OpenMed"),
            //                                 ),
            //                               ),
            //                             ],
            //                           )),
            //                           const SizedBox(
            //                             width: 20,
            //                           ),
            //                           Row(
            //                             children: [
            //                               Text(
            //                                 controller.parts[index]
            //                                     ["rating"],
            //                                 overflow: TextOverflow
            //                                     .ellipsis,
            //                                 style: const TextStyle(
            //                                     color: Color(
            //                                         0xff7C797A),
            //                                     fontSize: 14,
            //                                     fontFamily:
            //                                         "OpenBold"),
            //                               ),
            //                               const Icon(
            //                                 Icons.star,
            //                                 color:
            //                                     Color(0xffFFD803),
            //                                 size: 20,
            //                               ),
            //                             ],
            //                           )
            //                         ],
            //                       ),
            //                     ],
            //                   )),
            //             ],
            //           ),
            //         ),
            //       );
            //     }),
            //   ),
            // ),
          ],
        ),
      );
    });
  }
}
