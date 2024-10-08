import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/ecommerce/ecommerce-state-controller.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

import '../../../routes/app/app-route-names.dart';

class ActivityScreen extends StatelessWidget {
  ActivityScreen({super.key});

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
                  Text(
                    "Activities",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  Icon(
                    IconlyLight.more_circle,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "New",
                          style: TextStyle(
                            fontFamily: "OpenMed",
                            color: Color(0xff030206),
                            fontSize: 16,
                          ),
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              "Mark all as read",
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
                    Column(
                      children: List.generate(5, (index) {
                        return _notificationTile(
                            title: "Vehicle Status Changed",
                            subtitle:
                                "Your vehicle diagnostic scan is complete. No issues were detected. Drive safe!",
                            time: "3 seconds ago",
                            action: () {},
                            icon: Iconsax.car);
                      }),
                    )
                  ],
                ),
              ),
            )),
          ],
        )),
      ),
    );
  }

  Container _notificationTile({title, action, icon, subtitle, time}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: const Color(0xffF8FAFB),
          borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        onTap: action,
        leading: Container(
          height: 39,
          width: 39,
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xff2B2A2B),
                  fontFamily: "OpenMed",
                  fontSize: 14),
            ),
            const Icon(
              Icons.more_vert,
              color: Color(0xffADADAD),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              style: const TextStyle(color: Color(0xff2B2A2B), fontSize: 12),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              time,
              style: const TextStyle(color: Color(0xff25D366), fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
