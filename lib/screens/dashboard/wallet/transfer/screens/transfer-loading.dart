import 'package:flutter/material.dart';
import 'package:vescan/widgets/bottom-sheets/transfer-completed.dart';

class TransferLoadingScreen extends StatefulWidget {
  const TransferLoadingScreen({super.key});

  @override
  State<TransferLoadingScreen> createState() => _TransferLoadingScreenState();
}

class _TransferLoadingScreenState extends State<TransferLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      TransferCompletedScreen().show(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(child: const CircularProgressIndicator()),
      ),
    );
  }
}
