import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/controller/home/home-state-controller.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class FavoriteMechanicScreen extends StatelessWidget {
  const FavoriteMechanicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeStateController>(builder: (controller) {
      return Scaffold(
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
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20,
                        )),
                    const Text(
                      "Favourites",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "OpenMed",
                          fontSize: 16),
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Get.toNamed(notificationScreen);
                            },
                            child: const Icon(
                              Iconsax.notification,
                              color: Colors.black,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                            onTap: () {
                              controller.toggleShowSearchBar();
                            },
                            child: const Icon(
                              IconlyLight.search,
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
              Visibility(
                visible: controller.showSearchbar,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value) {
                      // Get.toNamed(searchMechanicLoadingScreen);
                    },
                    decoration: InputDecoration(
                      hintText: "Search",
                      suffixIcon: const Icon(
                        IconlyLight.search,
                        color: Color(0xffADADAD),
                      ),
                      hintStyle: const TextStyle(
                          color: Color(0xffADADAD), fontFamily: "OpenMed"),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color(0xffF1F1F1), width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color(0xffF1F1F1), width: 1)),
                    ),
                  ),
                ),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Favourite Mechanics",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "OpenMed",
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: List.generate(3, (index) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: const Color(0xffD6D5D6))),
                              child: _tiles(),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Liked Towing Vehicle Companies",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "OpenMed",
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: List.generate(3, (index) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: const Color(0xffD6D5D6))),
                              child: _tiles2(),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 20,
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
    });
  }

  Widget _tiles() {
    return InkWell(
      onTap: () {
        Get.toNamed(mechanicProfileScreen);
      },
      child: Column(
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
                        style:
                            TextStyle(color: Color(0xff7C797A), fontSize: 12),
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
      ),
    );
  }

  Widget _tiles2() {
    return InkWell(
      onTap: () {
        Get.toNamed(towCompanyProfileScreen);
      },
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                        width: 35,
                        height: 39,
                        decoration: const BoxDecoration(
                            color: Color(0xff001F3F), shape: BoxShape.circle),
                        child: Center(
                            child:
                                SvgPicture.asset("assets/images/towing.svg"))),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "AA Rescue Limited",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "OpenBold",
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Car towing, Auto Storage, etc.",
                            style: TextStyle(
                                color: Color(0xff00BFFF), fontSize: 14),
                          ),
                        ],
                      ),
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
                        style:
                            TextStyle(color: Color(0xff7C797A), fontSize: 12),
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
      ),
    );
  }
}
