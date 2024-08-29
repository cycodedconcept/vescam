import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';
import 'package:vescan/models/scanData/scanData.dart';
import 'package:vescan/routes/app/app-route-names.dart';
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
  List<dynamic> _countries = [];

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
  List<dynamic> get countries => _countries;

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

  updateCountriesData(value) {
    _countries = value;
    update();
  }

  updateState(value) {
    _state.text = value;
    update();
  }

  // ========== JSON ===========
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/countries.json');
    final data = await json.decode(response);
    updateCountriesData(data);
  }

  List<dynamic> getStatesForCountry(String countryName) {
    var country = _countries.firstWhere(
      (country) => country['name'] == countryName,
      orElse: () => null,
    );

    if (country != null) {
      return country['states'];
    } else {
      return [];
    }
  }

  // ====== API CALL ======
  Future getUserDashboard() async {
    updateIsLoading(true);

    var response = await AuthServices().getUserDashboardService();
    var responseData = response!.data;
    log(responseData.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
      updateIsLoading(false);

      readJson();

      // _scannedData = ScannedData.fromMap(responseData["scanned_data"]);
      _user = User.fromMap(responseData["user"]);

      _name.text = responseData["user"]["name"];
      _email.text = responseData["user"]["email"];
      _phoneNumber.text = responseData["user"]["phone_number"];
      _address.text = responseData["user"]["destination_address"] ?? "";
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
      "shipping_address": _address.text,
    };

    log(data.toString());

    var response = await AuthServices().updateCustomerDetailsService(data);
    var responseData = response!.data;
    log(responseData.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
      updateIsLoading(false);

      getUserDashboard();

      Get.offAndToNamed(editSuccessfulScreen);
    } else {
      updateIsLoading(false);

      toastification.show(
        style: ToastificationStyle.fillColored,
        type: ToastificationType.error,
        showProgressBar: false,
        showIcon: true,
        title: const Text("Error"),
        description: Text(responseData['message'].toString()),
        autoCloseDuration: const Duration(seconds: 3),
      );

      Get.back();
    }

    update();
  }
}
