import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

class SearchForTowCompanyInputScreen extends StatelessWidget {
  SearchForTowCompanyInputScreen({super.key});

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
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 20,
                      )),
                  const Text(
                    "Search Input",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Icon(
                        IconlyLight.notification,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Top Searches",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "OpenMed",
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: List.generate(5, (index) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: const Color(0xffD6D5D6))),
                                child: _tiles(),
                              );
                            }),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF1F1F1),
                      hintText: "Search",
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color(0xffADADAD),
                      ),
                      hintStyle: const TextStyle(
                          color: Color(0xffADADAD), fontFamily: "OpenMed"),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
            )
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
