import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';
import 'package:vescan/models/scanData/scanData.dart';
import 'package:vescan/services/auth/auth-services.dart';

import '../../models/user/user-model.dart';

class ProfileStateController extends GetxController {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _email = TextEditingController();
  User _user = User();
  ScannedData _scannedData = ScannedData();
  bool _isLoading = false;
  String _password = "";
  String _confirmPassword = "";

  // ========= GETTERS ========
  TextEditingController get name => _name;
  TextEditingController get phoneNumber => _phoneNumber;
  TextEditingController get state => _state;
  TextEditingController get address => _address;
  TextEditingController get email => _email;
  User get user => _user;
  ScannedData get scannedData => _scannedData;
  bool get isLoading => _isLoading;
  String get password => _password;
  String get confirmPassword => _confirmPassword;

  // ========= SETTERS =========
  updateIsLoading(value) {
    _isLoading = value;
    update();
  }

  updatePassword(value) {
    _password = value;
    update();
  }

  updateConfirmPassword(value) {
    _confirmPassword = value;
    update();
  }

  // ====== API CALL ======
  Future getUserDashboard() async {
    updateIsLoading(true);

    var response = await AuthServices().getUserDashboardService();
    var responseData = response!.data;
    log(responseData.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
      updateIsLoading(false);

      // _scannedData = ScannedData.fromMap(responseData["scanned_data"]);
      _user = User.fromMap(responseData["user"]);

      _name.text = responseData["user"]["name"];
      _email.text = responseData["user"]["email"];
      _phoneNumber.text = responseData["user"]["phone_number"];
      _address.text = responseData["user"]["destination_address"];
    } else {
      updateIsLoading(false);
    }

    update();
  }

  Future updateCustomerDetails() async {
    updateIsLoading(true);

    var data = {
      "name": _name.text,
      "phone_number": _phoneNumber.text,
      "state": _state.text,
      "destination_address": _address.text,
    };

    var response = await AuthServices().updateCustomerDetailsService(data);
    var responseData = response!.data;
    log(responseData.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
      updateIsLoading(false);

      getUserDashboard();

      toastification.show(
        style: ToastificationStyle.fillColored,
        type: ToastificationType.error,
        showProgressBar: false,
        showIcon: true,
        title: const Text("Success"),
        description: const Text("Profile updated successfully!"),
        autoCloseDuration: const Duration(seconds: 3),
      );
    } else {
      updateIsLoading(false);

      toastification.show(
        style: ToastificationStyle.fillColored,
        type: ToastificationType.error,
        showProgressBar: false,
        showIcon: true,
        title: const Text("Error"),
        description: Text(responseData['error'].toString()),
        autoCloseDuration: const Duration(seconds: 3),
      );
    }

    update();
  }
}
