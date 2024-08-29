// To parse this JSON data, do
//
//     final scannedData = scannedDataFromMap(jsonString);

import 'dart:convert';

ScannedData scannedDataFromMap(String str) => ScannedData.fromMap(json.decode(str));

String scannedDataToMap(ScannedData data) => json.encode(data.toMap());

class ScannedData {
    String? intakeTemp;
    String? engineLoad;
    String? batteryvoltage;
    String? coolantTemp;
    String? rpm;
    String? speed;
    String? lat;
    String? log;

    ScannedData({
        this.intakeTemp,
        this.engineLoad,
        this.batteryvoltage,
        this.coolantTemp,
        this.rpm,
        this.speed,
        this.lat,
        this.log,
    });

    factory ScannedData.fromMap(Map<String, dynamic> json) => ScannedData(
        intakeTemp: json["intake_temp"],
        engineLoad: json["engine_load"],
        batteryvoltage: json["batteryvoltage"],
        coolantTemp: json["coolant_temp"],
        rpm: json["rpm"],
        speed: json["speed"],
        lat: json["lat"],
        log: json["log"],
    );

    Map<String, dynamic> toMap() => {
        "intake_temp": intakeTemp,
        "engine_load": engineLoad,
        "batteryvoltage": batteryvoltage,
        "coolant_temp": coolantTemp,
        "rpm": rpm,
        "speed": speed,
        "lat": lat,
        "log": log,
    };
}
