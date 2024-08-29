import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';
import 'package:vescan/storage/local-storage.dart';

import '../../routes/app/app-route-names.dart';
import '../../services/auth/auth-services.dart';

class AuthStateController extends GetxController {
  // INSTANT VARIABLES

  String _name = "";
  String _email = "";
  String _country = "";
  String _phoneNumber = "";
  String _password = "";
  String _confirmPassword = "";
  String _otpCode = "";
  String _deviceId = "";
  bool _showPassword = false;
  bool _isRememberMe = false;
  bool _isTermsChecked = false;
  bool _isLoading = false;
  bool _showSuccessGif = false;

  // GETTERS
  String get name => _name;
  String get email => _email;
  String get country => _country;
  String get phoneNumber => _phoneNumber;
  String get password => _password;
  String get confirmPassword => _confirmPassword;
  String get otpCode => _otpCode;
  String get deviceId => _deviceId;
  bool get showPassword => _showPassword;
  bool get isRememberMe => _isRememberMe;
  bool get isTermsChecked => _isTermsChecked;
  bool get isLoading => _isLoading;
  bool get showSuccessGif => _showSuccessGif;

  // SETTERS
  updateName(value) {
    _name = value;
    update();
  }

  updateEmail(value) {
    _email = value;
    update();
  }

  updateCountry(value) {
    _country = value;
    update();
  }

  updatePhoneNumber(value) {
    _phoneNumber = value;
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

  updateOtpCode(value) {
    _otpCode = value;
    update();
  }

  updateDeviceId(value) {
    _deviceId = value;
    update();
  }

  updateIsLoading(value) {
    _isLoading = value;
    update();
  }

  toggleIsRememberMe() {
    _isRememberMe = !_isRememberMe;
    update();
  }

  toggleShowPassword() {
    _showPassword = !_showPassword;
    update();
  }

  toggleIsTermsChecked() {
    _isTermsChecked = !_isTermsChecked;
    update();
  }

  toggleShowSuccessGif() {
    _showSuccessGif = !_showSuccessGif;
    update();
  }

  // API CALLS
  Future loginUser() async {
    updateIsLoading(true);

    var data = {"email": _email, "password": _password};

    var response = await AuthServices().loginUserService(data);
    var responseData = response!.data;
    log(responseData.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
      updateIsLoading(false);

      await LocalStorage().storeUserToken(responseData['token']);
      await LocalStorage().storeEmail(responseData["user"]["email"]);

      Get.offAllNamed(dashboard);
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

      Get.back();
    }
  }

  Future registerUser() async {
    updateIsLoading(true);

    String encodedData = await LocalStorage().fetchLocationData();
    Map<String, dynamic> decodedData = jsonDecode(encodedData);

    var data = {
      "name": _name,
      "email": _email,
      "country": "Nigeria",
      "phone_number": _phoneNumber,
      "password": _password,
      "password_confirmation": _confirmPassword,
    };

    log(data.toString());

    var response = await AuthServices().registerUserService(data);
    var responseData = response!.data;
    log(responseData.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
      updateIsLoading(false);

      await LocalStorage().storeUserToken(responseData["token"]);
      await LocalStorage().storeEmail(responseData["user"]["email"]);

      Get.offAllNamed(signUpSuccess);
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

      Get.back();
    }
  }

  Future verifyOtp() async {
    updateIsLoading(true);

    String email = await LocalStorage().fetchEmail();

    var data = {
      "email": email,
      "otp": _otpCode,
    };

    log(data.toString());

    var response = await AuthServices().verifyEmailOtpService(data);
    var responseData = response!.data;
    log(responseData.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
      updateIsLoading(false);

      toggleShowSuccessGif();

      Future.delayed(const Duration(seconds: 3), () {
        _showSuccessGif = false;
        Get.offAllNamed(login);
      });
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

  Future resetPassword() async {
    updateIsLoading(true);

    var data = {
      "email": _email,
      "password": _password,
      "password_confirmation": _confirmPassword,
    };

    log(data.toString());

    var response = await AuthServices().updatePasswordService(data);
    var responseData = response!.data;
    log(responseData.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
      updateIsLoading(false);

      // Get.offAndToNamed(login);
    } else {
      updateIsLoading(false);

      toastification.show(
        style: ToastificationStyle.fillColored,
        type: ToastificationType.error,
        title: const Text("Error"),
        description: Text(responseData["message"]),
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  Future refreshToken() async {
    var response = await AuthServices().refreshTokenService();
    var responseData = response!.data;
    log(responseData.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
    } else {}
  }
}
