import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class VehicleInfoScreen extends StatelessWidget {
  const VehicleInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Vehicle Information",
          style: TextStyle(fontSize: 16, fontFamily: "OpenBold"),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.notification)),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(3.88, 3.88),
                        blurRadius: 14.55,
                        color: Color(0xff333333).withOpacity(0.04))
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.more_vert,
                      color: Color(0xff7C797A),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
