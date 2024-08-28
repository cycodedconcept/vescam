import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vescan/controller/auth/auth-state-controller.dart';

class LoginLoadingScreen extends StatefulWidget {
  const LoginLoadingScreen({super.key});

  @override
  State<LoginLoadingScreen> createState() => _LoginLoadingScreenState();
}

class _LoginLoadingScreenState extends State<LoginLoadingScreen> {

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
              "Login Loading...",
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
