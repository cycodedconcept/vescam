import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

class SearchMechanicScreen extends StatelessWidget {
  const SearchMechanicScreen({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 20,
                      )),
                  const Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            Iconsax.heart,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            IconlyLight.notification,
                            color: Colors.black,
                          )),
                    ],
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
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Do you have a mechanic name you want to search?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff030206),
                            fontFamily: "OpenMed",
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            
                            Column(
                              children: List.generate(5, (index) {
                                return Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Color(0xffD6D5D6))),
                                  child: _tiles(),
                                );
                              }),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

  Column _tiles() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 35,
                    height: 39,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/man.png")),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Engr. Hassan Bello",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "OpenBold",
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Automobile Expert",
                        style:
                            TextStyle(color: Color(0xff00BFFF), fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "4.5",
                  style: TextStyle(color: Color(0xffD6D5D6), fontSize: 12),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffFFD803),
                  size: 13,
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Iconsax.location,
                      color: Color(0xffD6D5D6),
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Location/Distance",
                      style: TextStyle(color: Color(0xff7C797A), fontSize: 12),
                    )
                  ],
                ),
                Text(
                  "Opebi Road, Ikeja / 3km",
                  style: TextStyle(color: Color(0xff001F3F), fontSize: 14),
                ),
              ],
            )),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xffD9DDE2),
                  )),
              child: const Icon(
                Iconsax.heart5,
                color: Color(0xffFF0022),
                size: 18,
              ),
            )
          ],
        )
      ],
    );
  }
}