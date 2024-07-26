import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vescan/screens/dashboard/auto-parts/auto-part.dart';
import 'package:vescan/screens/dashboard/home/home.dart';
import 'package:vescan/screens/dashboard/scan/scan.dart';
import 'package:vescan/screens/dashboard/settings/settings.dart';
import 'package:vescan/screens/dashboard/wallet/wallet.dart';

class AppStateController extends GetxController {
  // INSTANT VARIABLES
  int _currentIndex = 0;
  List<Widget> _dashboardItems = [
    HomeView(),
    WalletView(),
    ScanView(),
    EcommerceView(),
    SettingsView()
  ];

  // GETTERS
  int get currentIndex => _currentIndex;
  List get dashboardItems => _dashboardItems;

  // SETTERS
  updateCurrentIndex(value) {
    _currentIndex = value;
    update();
  }
}
