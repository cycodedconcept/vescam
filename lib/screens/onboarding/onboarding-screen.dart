import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:gif/gif.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/widgets/buttons/buttons.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  final List<Map<String, dynamic>> _onboardingItems = [
    {
      "title": "Instant Vehicle Diagnostics",
      "subtitle":
          "Quickly scan your vehicle for issues with just a tap and provides detailed reports.",
      "gif": "assets/gif/car-repair.gif",
    },
    {
      "title": "Connect with Expert Mechanics",
      "subtitle":
          "Need a repair? Request a certified mechanic to your location in minutes.",
      "gif": "assets/gif/city-park.gif",
    },
    {
      "title": "Maintain Your Vehicle's Health",
      "subtitle":
          "Receive timely maintenance tips and alerts to keep your vehicle in top condition.",
      "gif": "assets/gif/school-driver.gif",
    },
  ];
  SwiperController _swiperController = SwiperController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.toNamed(login);
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                                color: Color(0xff001F3F),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )),
              Expanded(
                  flex: 6,
                  child: Swiper(
                    loop: false,
                    controller: _swiperController,
                    itemCount: _onboardingItems.length,
                    itemHeight: 270,
                    itemWidth: 270,
                    onIndexChanged: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    itemBuilder: (context, index) => Gif(
                        autostart: Autostart.once,
                        placeholder: (context) =>
                            const Center(child: CircularProgressIndicator()),
                        image: AssetImage(_onboardingItems[index]["gif"])),
                  )),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: const Color(0xff001F3F),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _onboardingItems[currentIndex]["title"],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          _onboardingItems[currentIndex]["subtitle"],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        AnimatedSmoothIndicator(
                          activeIndex: currentIndex,
                          count: 3,
                          effect: const ExpandingDotsEffect(
                              spacing: 8.0,
                              radius: 10.0,
                              dotWidth: 8.0,
                              dotHeight: 8.0,
                              expansionFactor: 4,
                              dotColor: Color(0xffD9DDE2),
                              activeDotColor: Colors.white),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Buttons().onboardingButtons(
                          action: () {
                            if (currentIndex == 0) {
                              _swiperController.next();
                              setState(() {
                                currentIndex = 1;
                              });
                            } else if (currentIndex == 1) {
                              _swiperController.next();
                              setState(() {
                                currentIndex = 2;
                              });
                            } else {
                              Get.toNamed(login);
                            }
                          },
                          title: (currentIndex == 2) ? "Get Started" : "Next"
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
