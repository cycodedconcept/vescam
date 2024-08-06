import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/wallet/wallet-state-controller.dart';
import 'package:vescan/widgets/bottom-sheets/select-account-type.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class TransferScreen1 extends StatelessWidget {
  const TransferScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WalletStateController>(builder: (controller) {
      return Expanded(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Input Transaction Information to Transfer Money to Beneficiary",
                        style: TextStyle(
                            color: Color(0xff030206),
                            fontSize: 16,
                            fontFamily: "OpenMed"),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Receiver’s Name",
                          hintStyle: const TextStyle(
                              color: Color(0xff7C797A), fontFamily: "OpenMed"),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xff7C797A), width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xff001F3F), width: 1)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xffFF0022), width: 1)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Receiver’s Account Number",
                          hintStyle: const TextStyle(
                              color: Color(0xff7C797A), fontFamily: "OpenMed"),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xff7C797A), width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xff001F3F), width: 1)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xffFF0022), width: 1)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Transaction PIN",
                          hintStyle: const TextStyle(
                              color: Color(0xff7C797A), fontFamily: "OpenMed"),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xff7C797A), width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xff001F3F), width: 1)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xffFF0022), width: 1)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          SelectAccountType().show(() {});
                        },
                        decoration: InputDecoration(
                          hintText: "Account Type",
                          suffixIcon: const Icon(
                            Iconsax.arrow_right_3,
                            color: Color(0xff7C797A),
                          ),
                          hintStyle: const TextStyle(
                              color: Color(0xff7C797A), fontFamily: "OpenMed"),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xff7C797A), width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xff001F3F), width: 1)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xffFF0022), width: 1)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        maxLines: 10,
                        minLines: 6,
                        decoration: InputDecoration(
                          hintText:
                              "Reference (e.g. Service charge from Kamolideen)",
                          hintStyle: const TextStyle(
                              color: Color(0xff7C797A), fontFamily: "OpenMed"),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xff7C797A), width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xff001F3F), width: 1)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xffFF0022), width: 1)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Buttons().authButtons(
                        title: "Next",
                        action: () {
                          controller.updateCurrentTransferScreen(1);
                        }),
                  ),
                )),
          ],
        ),
      );
    });
  }
}
