import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileStateController extends GetxController {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _email = TextEditingController();

  TextEditingController get name => _name;
  TextEditingController get phoneNumber => _phoneNumber;
  TextEditingController get state => _state;
  TextEditingController get address => _address;
  TextEditingController get email => _email;

  
}
