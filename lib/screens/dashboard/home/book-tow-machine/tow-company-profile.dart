import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/bottom-sheets/inspection-fee-sheet.dart';
import 'package:vescan/widgets/buttons/buttons.dart';
import 'package:vescan/widgets/pop-up/confirm-payment.dart';

class TowCompanyProfileScreen extends StatelessWidget {
  const TowCompanyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            )),
        centerTitle: true,
        title: const Text(
          "Towing Company Profile",
          style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(notificationScreen);
              },
              icon: const Icon(IconlyLight.notification)),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Color(0xff001F3F),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )),
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/towing-blue.svg"),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "AA Rescue Limited",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "OpenBold",
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Car Towing | +2348134663411",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "OpenMed",
                                color: Color(0xff00BFFF)),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Iconsax.location,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Opebi Road, Ikeja / 3km",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "OpenMed",
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Iconsax.call,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Call   |",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "OpenMed",
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Iconsax.message,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Message",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "OpenMed",
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Basic Information",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "OpenMed",
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    offset: const Offset(0, 0),
                                    blurRadius: 30,
                                    spreadRadius: 0)
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 88,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff001F3F),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Iconsax.profile_2user5,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "200+",
                                        style: TextStyle(
                                            color: Color(0xff030206),
                                            fontSize: 14,
                                            fontFamily: "OpenMed"),
                                      ),
                                      const Text(
                                        "Clients",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Color(0xff7C797A),
                                            fontSize: 12,
                                            fontFamily: "OpenMed"),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 88,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff001F3F),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Iconsax.profile_2user5,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "8+",
                                        style: TextStyle(
                                            color: Color(0xff030206),
                                            fontSize: 14,
                                            fontFamily: "OpenMed"),
                                      ),
                                      const Text(
                                        "Experience Years",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Color(0xff7C797A),
                                            fontSize: 12,
                                            fontFamily: "OpenMed"),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 88,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff001F3F),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Iconsax.profile_2user5,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "120+",
                                        style: TextStyle(
                                            color: Color(0xff030206),
                                            fontSize: 14,
                                            fontFamily: "OpenMed"),
                                      ),
                                      const Text(
                                        "Work Reviews",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Color(0xff7C797A),
                                            fontSize: 12,
                                            fontFamily: "OpenMed"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "About AA Rescue Limited",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "OpenMed",
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Engr. Hassan Bello is a seasoned automobile engineer with over 8 years of experience in the automotive industry. Known for his exceptional diagnostic skills and comprehensive knowledge of vehicle systems, Hassan has a proven track record of efficiently resolving complex mechanical issues.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Color(0xff7C797A),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Working Hours",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "OpenMed",
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Weekdays - 8:00am to 6:30pm",
                            style: TextStyle(
                              color: Color(0xff7C797A),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Weekdays - 8:00am to 6:30pm",
                            style: TextStyle(
                              color: Color(0xff7C797A),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "All Reviews",
                                style: TextStyle(
                                  fontFamily: "OpenMed",
                                  color: Color(0xff030206),
                                  fontSize: 12,
                                ),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: const Text(
                                    "4.5 (32 Reviews)",
                                    style: TextStyle(
                                        color: Color(0xff00BFFF),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: List.generate(5, (index) {
                              return _tiles();
                            }),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Buttons().authButtons(
                        title: "Proceed to Pay Inspection Fee",
                        action: () {
                          InspectionFeeSheet().show(() {
                            Get.back();
                            ConfirmPayment().show(context, () {});
                          });
                        }),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget _tiles() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: const Color(0xffF8FAFB),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/avatar.png")),
                          color: Colors.grey,
                          shape: BoxShape.circle),
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
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "5 Min Ago",
                          style:
                              TextStyle(color: Color(0xff00BFFF), fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              StarRating(
                rating: 4,
                allowHalfRating: false,
                onRatingChanged: (rating) {},
                borderColor: const Color(0xffFFD803),
                color: const Color(0xffFFD803),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "AA Rescue Limited is a seasoned automobile engineer with over 8 years of experience in the automotive industry.",
            style: TextStyle(color: Color(0xff7C797A), fontSize: 13),
          )
        ],
      ),
    );
  }
}
