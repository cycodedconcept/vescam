import 'package:flutter/material.dart';

class EditLoadingScreen extends StatefulWidget {
  const EditLoadingScreen({super.key});

  @override
  State<EditLoadingScreen> createState() => _EditLoadingScreenState();
}

class _EditLoadingScreenState extends State<EditLoadingScreen> {

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
