import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/ecommerce/ecommerce-state-controller.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class ProductCartView extends StatelessWidget {
  const ProductCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EcommerceStateController>(builder: (controller) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Cart (2)",
            style: TextStyle(
              fontFamily: "OpenMed",
              color: Color(0xff030206),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  height: 148,
                  width: 167,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/part6.png"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Bosch Oil Filter",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 14,
                                  fontFamily: "OpenBold"),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Color(0xffF8FAFB),
                                shape: BoxShape.circle),
                            child: const Icon(
                              Iconsax.trash,
                              color: Color(0xffFF3737),
                              size: 20,
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "N10,850",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Color(0xff7C797A),
                            color: Color(0xff7C797A),
                            fontSize: 12,
                            fontFamily: "OpenMed"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "N 9,850",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Color(0xff030206),
                            fontSize: 16,
                            fontFamily: "OpenBold"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Iconsax.discount_shape,
                            color: Color(0xff00BFFF),
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "20% Discount Available",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xff00BFFF),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: const Text(
                              "Spare Parts",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0xff7C797A),
                                  fontSize: 10,
                                  fontFamily: "OpenMed"),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
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
                                    fontSize: 13,
                                    fontFamily: "OpenMed"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  height: 148,
                  width: 167,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/part6.png"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Bosch Oil Filter",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0xff030206),
                                  fontSize: 14,
                                  fontFamily: "OpenBold"),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Color(0xffF8FAFB),
                                shape: BoxShape.circle),
                            child: const Icon(
                              Iconsax.trash,
                              color: Color(0xffFF3737),
                              size: 20,
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "N10,850",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Color(0xff7C797A),
                            color: Color(0xff7C797A),
                            fontSize: 12,
                            fontFamily: "OpenMed"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "N 9,850",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Color(0xff030206),
                            fontSize: 16,
                            fontFamily: "OpenBold"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Iconsax.discount_shape,
                            color: Color(0xff00BFFF),
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "20% Discount Available",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xff00BFFF),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: const Text(
                              "Spare Parts",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0xff7C797A),
                                  fontSize: 10,
                                  fontFamily: "OpenMed"),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
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
                                    fontSize: 13,
                                    fontFamily: "OpenMed"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff00BFFF)),
              color: Colors.white,
            ),
            child: const ListTile(
              title: Text(
                "Have a Promo Code?",
                style: TextStyle(color: Color(0xff030206), fontSize: 14),
              ),
              trailing: Icon(
                Iconsax.add,
                color: Color(0xff030206),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subtotal",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xff7C797A),
                  fontSize: 14,
                ),
              ),
              Text(
                "N 19,700",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xff7C797A),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shipping Fee",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xff7C797A),
                  fontSize: 14,
                ),
              ),
              Text(
                "N 850",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xff7C797A),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Estimated Total",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Color(0xff030206),
                    fontSize: 16,
                    fontFamily: "OpenBold"),
              ),
              Text(
                "N 20,550",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Color(0xff030206),
                    fontSize: 16,
                    fontFamily: "OpenBold"),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Buttons().authButtons(title: "Checkout (N 20,550)", action: () {}),
          const SizedBox(
            height: 50,
          ),
        ],
      );
    });
  }
}
