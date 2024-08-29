// To parse this JSON data, do
//
//     final user = userFromMap(jsonString);

import 'dart:convert';

User userFromMap(String str) => User.fromMap(json.decode(str));

String userToMap(User data) => json.encode(data.toMap());

class User {
    int? id;
    String? name;
    String? email;
    String? country;
    dynamic emailVerifiedAt;
    String? role;
    dynamic state;
    dynamic destinationAddress;
    String? phoneNumber;
    String? otp;
    DateTime? otpDateTime;
    String? active;
    String? deviceId;
    String? lat;
    String? log;
    String? deviceVerified;

    User({
        this.id,
        this.name,
        this.email,
        this.country,
        this.emailVerifiedAt,
        this.role,
        this.state,
        this.destinationAddress,
        this.phoneNumber,
        this.otp,
        this.otpDateTime,
        this.active,
        this.deviceId,
        this.lat,
        this.log,
        this.deviceVerified,
    });

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        country: json["country"],
        emailVerifiedAt: json["email_verified_at"],
        role: json["role"],
        state: json["state"],
        destinationAddress: json["destination_address"],
        phoneNumber: json["phone_number"],
        otp: json["otp"],
        otpDateTime: json["otp_date_time"] == null ? null : DateTime.parse(json["otp_date_time"]),
        active: json["active"],
        deviceId: json["device_id"],
        lat: json["lat"],
        log: json["log"],
        deviceVerified: json["device_verified"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "country": country,
        "email_verified_at": emailVerifiedAt,
        "role": role,
        "state": state,
        "destination_address": destinationAddress,
        "phone_number": phoneNumber,
        "otp": otp,
        "otp_date_time": otpDateTime?.toIso8601String(),
        "active": active,
        "device_id": deviceId,
        "lat": lat,
        "log": log,
        "device_verified": deviceVerified,
    };
}
