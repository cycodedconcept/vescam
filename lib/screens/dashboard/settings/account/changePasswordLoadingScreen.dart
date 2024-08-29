import 'package:flutter/material.dart';


class ChangePasswordLoadingScreen extends StatefulWidget {
  const ChangePasswordLoadingScreen({super.key});

  @override
  State<ChangePasswordLoadingScreen> createState() => _ChangePasswordLoadingScreenState();
}

class _ChangePasswordLoadingScreenState extends State<ChangePasswordLoadingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
