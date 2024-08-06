import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vescan/screens/dashboard/wallet/transfer/screens/transfer-screen-1.dart';
import 'package:vescan/screens/dashboard/wallet/transfer/screens/transfer-screen-2.dart';

class WalletStateController extends GetxController {
  List<Widget> _tranferViews = [TransferScreen1(), TransferScreen2()];
  int _currentTransferScreen = 0;

  List<Widget> get transferViews => _tranferViews;
  int get currentTransferScreen => _currentTransferScreen;

  updateCurrentTransferScreen(value) {
    _currentTransferScreen = value;
    update();
  }
}
