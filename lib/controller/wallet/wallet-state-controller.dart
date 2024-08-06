import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vescan/screens/dashboard/wallet/transfer/screens/transfer-screen-1.dart';
import 'package:vescan/screens/dashboard/wallet/transfer/screens/transfer-screen-2.dart';

class WalletStateController extends GetxController {
  List<Widget> _tranferViews = [TransferScreen1(), TransferScreen2()];
  int _currentTransferScreen = 0;
  final List<Map<String, dynamic>> _transactions = [
    {
      "title": "Transfer to Engr. Hassan Bello",
      "date": "July 3rd, 2024 | 8:53:45AM",
      "amount": "20,000.00",
      "status": "successful",
      "type": "debit"
    },
    {
      "title": "Add Money-Bank Card",
      "date": "July 3rd, 2024 | 8:53:45AM",
      "amount": "5,000.00",
      "status": "successful",
      "type": "credit"
    },
    {
      "title": "Transfer to KAMOLIDEEN OLASUKANMI",
      "date": "July 3rd, 2024 | 8:53:45AM",
      "amount": "20,000.00",
      "status": "successful",
      "type": "debit"
    },
    {
      "title": "Transfer to Engr. Hassan Bello",
      "date": "July 3rd, 2024 | 8:53:45AM",
      "amount": "20,000.00",
      "status": "successful",
      "type": "debit"
    },
    {
      "title": "Add Money-Bank Card",
      "date": "July 3rd, 2024 | 8:53:45AM",
      "amount": "5,000.00",
      "status": "successful",
      "type": "credit"
    },
    {
      "title": "Transfer to KAMOLIDEEN OLASUKANMI",
      "date": "July 3rd, 2024 | 8:53:45AM",
      "amount": "20,000.00",
      "status": "successful",
      "type": "debit"
    },
  ];

  List<Widget> get transferViews => _tranferViews;
  int get currentTransferScreen => _currentTransferScreen;
  List<Map<String, dynamic>> get transactions => _transactions;

  updateCurrentTransferScreen(value) {
    _currentTransferScreen = value;
    update();
  }
}
