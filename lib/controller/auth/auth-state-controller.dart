import 'package:get/get.dart';

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
  bool _isLoading = false;

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
  bool get isLoading => _isLoading;

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
}
