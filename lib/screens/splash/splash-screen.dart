import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/route_manager.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/storage/local-storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentStep = 0;


getLocation() async {
  setState(() {
    _currentStep = 20; // Update progress to 20%
  });

  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  setState(() {
    _currentStep = 40; // Update progress to 40%
  });

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  } else if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission != LocationPermission.whileInUse &&
        permission != LocationPermission.always) {
      return Future.error(
          'Location permissions are denied (actual value: $permission).');
    }
  }

  setState(() {
    _currentStep = 60; // Update progress to 60%
  });

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  log('Latitude: ${position.latitude}, Longitude: ${position.longitude}');

  setState(() {
    _currentStep = 80; // Update progress to 80%
  });

  List<Placemark> placemarks = await placemarkFromCoordinates(
      position.latitude, position.longitude);

  String country = placemarks.first.country ?? '';
  String state = placemarks.first.administrativeArea ?? '';
  String address = placemarks.first.street ?? '';

  Map<String, dynamic> locationData = {
    "longitude": position.longitude,
    "latitude": position.latitude,
    "country": country,
    "state": state,
    "address": address,
  };

  String encodedData = jsonEncode(locationData);

  await LocalStorage().storeLocationData(encodedData);

  setState(() {
    _currentStep = 100;
  });

  String authToken = await LocalStorage().fetchUserToken();

  (authToken.isEmpty)
      ? Get.toNamed(onboarding)
      : Get.toNamed(login);
}

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xff001F3F),
            child: Center(
              child: Image.asset("assets/images/logo-1.png"),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: CircularProgressIndicator(
                  value: _currentStep.toDouble(),
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
