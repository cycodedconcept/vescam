import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/ecommerce/ecommerce-state-controller.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class AddPaymentMethodSheet {
  show() {
    Get.bottomSheet(
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              )),
          child: GetBuilder<EcommerceStateController>(builder: (controller) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Add Payment Method",
                      style: TextStyle(
                          color: Color(0xff06070C),
                          fontSize: 20,
                          fontFamily: "OpenMed"),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Iconsax.minus,
                        color: Color(0xff06070C),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          controller.updatePaymentMethod("mastercard");
                        },
                        child: Container(
                          height: 84,
                          decoration: BoxDecoration(
                              border: (controller.selectedPaymentMethod ==
                                      "mastercard")
                                  ? Border.all(
                                      color: Color(0xff25D366), width: 1.5)
                                  : null,
                              borderRadius: BorderRadius.circular(8.35),
                              color: const Color(0xffF6F7FB)),
                          child: Center(
                              child: SvgPicture.asset(
                                  "assets/images/mastercard.svg")),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          controller.updatePaymentMethod("visa");
                        },
                        child: Container(
                          height: 84,
                          decoration: BoxDecoration(
                              border:
                                  (controller.selectedPaymentMethod == "visa")
                                      ? Border.all(
                                          color: Color(0xff25D366), width: 1.5)
                                      : null,
                              borderRadius: BorderRadius.circular(8.35),
                              color: const Color(0xffF6F7FB)),
                          child: Center(
                              child:
                                  SvgPicture.asset("assets/images/visa.svg")),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          controller.updatePaymentMethod("paypal");
                        },
                        child: Container(
                          height: 84,
                          decoration: BoxDecoration(
                              border:
                                  (controller.selectedPaymentMethod == "paypal")
                                      ? Border.all(
                                          color: Color(0xff25D366), width: 1.5)
                                      : null,
                              borderRadius: BorderRadius.circular(8.35),
                              color: const Color(0xffF6F7FB)),
                          child: Center(
                              child:
                                  SvgPicture.asset("assets/images/paypal.svg")),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  value: true,
                  activeColor: const Color(0xff0BBFFF),
                  onChanged: (value) {},
                  title: const Text(
                    "Use Cash on Delivery",
                    style: TextStyle(
                        color: Color(0xff172239),
                        fontSize: 16,
                        fontFamily: "OpenMed"),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Buttons().authButtons(
                    title: "Add Payment Method",
                    action: () {
                      Get.toNamed(addCardScreen);
                    }),
                const SizedBox(
                  height: 15,
                ),
              ],
            );
          }),
        ),
        isScrollControlled: true);
  }
}
