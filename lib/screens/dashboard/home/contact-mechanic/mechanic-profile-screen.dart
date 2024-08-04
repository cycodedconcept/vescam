import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MechanicProfileScreen extends StatelessWidget {
  const MechanicProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Iconsax.edit,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Basic Information",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenMed",
                            fontSize: 16),
                      ),
                    ],
                  ),
                 const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/avatar.png"))),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kamaldeen Olakunle Okelola",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "OpenBold",
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "scholarkamaldeen@gmail.com",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "OpenMed",
                                color: Color(0xff00BFFF)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "+2348067442371",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "OpenMed",
                                color: Color(0xffFFD803)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}