import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vescan/routes/app/app-route-names.dart';

class SearchMechanicLoadingScreen extends StatefulWidget {
  const SearchMechanicLoadingScreen({super.key});

  @override
  State<SearchMechanicLoadingScreen> createState() => _SearchMechanicLoadingScreenState();
}

class _SearchMechanicLoadingScreenState extends State<SearchMechanicLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(searchMechanicInputScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Mechanic Booking Loading...",
              style: TextStyle(
                  color: Color(0xff030206),
                  fontSize: 14,
                  fontFamily: "OpenMed"),
            ),
          ],
        ),
      ),
    );
  }
}
