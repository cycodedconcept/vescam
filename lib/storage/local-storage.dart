import 'dart:developer';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage{

  final FlutterSecureStorage _flutterSecureStorage = const FlutterSecureStorage();

  // STORE LOCATION DATA
  storeLocationData(String data) async{
    try {
      await _flutterSecureStorage.write(key: "LOCATION", value: data);
      log("Saved Locations");
    } catch (e) {
      log(e.toString());
      log("Could not save Locations");
    }
  }

  // FETCH LOCATION DATA
  Future<String> fetchLocationData() async{
    String data = await _flutterSecureStorage.read(key: "LOCATION") ?? "";
    log("Fetched Location successful");

    return data;
  }
  
  // STORE REMEMBER ME CHECK
  storeIsRememberMeChecked(String isChecked) async{
    try {
      await _flutterSecureStorage.write(key: "ISREMEMBERED", value: isChecked);
      log("Saved check");
    } catch (e) {
      log(e.toString());
      log("Could not save check");
    }
  }

  // FETCH REMEMBER ME CHECK
  Future<String> fetchIsRememberMeChecked() async{
    String isChecked = await _flutterSecureStorage.read(key: "ISREMEMBERED") ?? "";
    log("Fetched check successful");

    return isChecked;
  }
  
  // STORE TOKEN
  storeUserToken(String token) async{
    try {
      await _flutterSecureStorage.write(key: "Token", value: token);
      log("Saved Token");
    } catch (e) {
      log(e.toString());
      log("Could not save token");
    }
  }

  // FETCH TOKEN
  Future<String> fetchUserToken() async{
    String token = await _flutterSecureStorage.read(key: "Token") ?? "";
    log("Fetched token successful");

    return token;
  }

  // STORE FCM TOKEN
  storeFCMToken(String token) async{
    try {
      await _flutterSecureStorage.write(key: "FCMTOKEN", value: token);
      log("Saved Token");
    } catch (e) {
      log(e.toString());
      log("Could not save token");
    }
  }

  // FETCH TOKEN
  Future<String> fetchFCMToken() async{
    String token = await _flutterSecureStorage.read(key: "FCMTOKEN") ?? "";
    log("Fetched token successful");

    return token;
  }

  // STORE EMAIL
  storeEmail(String email) async{
    try {
      await _flutterSecureStorage.write(key: "Email", value: email);
      log("Saved Email");
    } catch (e) {
      log(e.toString());
      log("Could not save EMail");
    }
  }

  // FETCH EMAIL
  Future<String> fetchEmail() async{
    String email = await _flutterSecureStorage.read(key: "Email") ?? "";
    log("Fetched email successful");

    return email;
  }

  // STORE PASSWORD
  storePassword(String password) async{
    try {
      await _flutterSecureStorage.write(key: "Password", value: password);
      log("Saved Password");
    } catch (e) {
      log(e.toString());
      log("Could not save Password");
    }
  }

  // FETCH EMAIL
  Future<String> fetchPassword() async{
    String password = await _flutterSecureStorage.read(key: "Password") ?? "";
    log("Fetched password successful");

    return password;
  }

  // DELETE USER FROM STORAGE
  Future<void> deleteUserStorage() async{
    await _flutterSecureStorage.deleteAll();
    log("Deleted Storage :)");
  }

  // DELETE USER TOKEN
  Future<void> deleteUserToken() async{
    await _flutterSecureStorage.delete(key: "Token");
    log("Deleted token :)");
  }

  // DELETE IS USER REMEBER
  Future<void> deleteUserRemember() async{
    await _flutterSecureStorage.delete(key: "ISREMEMBERED");
    log("Deleted user is remebered :)");
  }
}