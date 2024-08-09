import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vescan/screens/dashboard/auto-parts/auto-part.dart';
import 'package:vescan/screens/dashboard/home/home.dart';
import 'package:vescan/screens/dashboard/scan/scan.dart';
import 'package:vescan/screens/dashboard/settings/settings.dart';
import 'package:vescan/screens/dashboard/wallet/wallet.dart';

class HomeStateController extends GetxController {
  // INSTANT VARIABLES
  bool _showDashboard = false;
  int _currentIndex = 0;
  List<Widget> _dashboardItems = [
    HomeView(),
    WalletView(),
    ScanView(),
    EcommerceView(),
    SettingsView()
  ];

  // GETTERS
  bool get showDashboard => _showDashboard;
  int get currentIndex => _currentIndex;
  List get dashboardItems => _dashboardItems;

  // SETTERS
  toggleShowDashboard() {
    _showDashboard = !_showDashboard;
    update();
  }
  updateCurrentIndex(value) {
    _currentIndex = value;
    update();
  }
}
