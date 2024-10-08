import 'package:flutter/material.dart';


class SignUpLoading extends StatefulWidget {
  const SignUpLoading({super.key});

  @override
  State<SignUpLoading> createState() => _SignUpLoadingState();
}

class _SignUpLoadingState extends State<SignUpLoading> {

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
              "Signing Up...",
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
