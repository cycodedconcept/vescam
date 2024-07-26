import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        color: const Color(0xff001F3F),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                  SizedBox(
                    width: 150,
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Volvo XC40",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Iconsax.arrow_down_1,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    IconlyLight.location,
                                    color: Color(0xff7C797A),
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Ikeja, Lagos",
                                    style: TextStyle(
                                        color: Color(0xff7C797A), fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 33,
                          width: 33,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 33,
                        width: 33,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: const Icon(
                          Icons.note_alt_outlined,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: const Icon(
                          IconlyLight.notification,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Switch.adaptive(
                      value: false,
                      activeColor: const Color(0xff00BFFF),
                      onChanged: (value) {}),
                  // Container(
                  //   height: 37,
                  //   width: 37,
                  //   padding: const EdgeInsets.all(10),
                  //   decoration: const BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     color: Colors.white,
                  //   ),
                  //   child: Gif(
                  //       autostart: Autostart.once,
                  //       placeholder: (context) =>
                  //           const Center(child: CircularProgressIndicator()),
                  //       image: const AssetImage("assets/gif/")),
                  // )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
