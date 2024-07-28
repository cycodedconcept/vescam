import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';

class ScanConnectingScreen extends StatefulWidget {
  const ScanConnectingScreen({super.key});

  @override
  State<ScanConnectingScreen> createState() => _ScanConnectingScreenState();
}

class _ScanConnectingScreenState extends State<ScanConnectingScreen> {
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Text(
                    "Scan Connecting",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "OpenMed",
                        fontSize: 16),
                  ),
                  Icon(
                    IconlyLight.notification,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: const Color(0xff001F3F),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/vehicle-diagnostic.svg",
                    height: 453,
                    width: 211,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        color: Color(0xffD9D9D9),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Connecting...",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenMed",
                            fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            )),
          ],
        )),
      ),
    );
  }
}
