import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:vescan/storage/local-storage.dart';
import '../../routes/api/api-routes.dart';

class AuthServices {
  final Dio _dio = Dio();

  // REGISTER
  Future<Response?> registerUserService(data) async {
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    try {
      String url = "$baseUrl$registerUser";
      FormData formData = FormData.fromMap(data);
      var response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            "Content-Type": "multipart/form-data",
            "Accept": "*/*",
          }));
      return response;
    } catch (error) {
      if (error is DioException) {
        log("$error");
        return error.response;
      } else {
        throw Exception(error);
      }
    }
  }

  // CONFIRM EMAIL
  Future<Response?> confirmEmailService(data) async {
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    try {
      String url = "$baseUrl$confirmEmail";
      FormData formData = FormData.fromMap(data);
      var response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            "Content-Type": "multipart/form-data",
            "Accept": "*/*",
          }));
      return response;
    } catch (error) {
      if (error is DioException) {
        log("$error");
        return error.response;
      } else {
        throw Exception(error);
      }
    }
  }

  // CONFIRM EMAIL
  Future<Response?> verifyEmailOtpService(data) async {
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    try {
      String url = "$baseUrl$verifyOtp";
      FormData formData = FormData.fromMap(data);
      var response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            "Content-Type": "multipart/form-data",
            "Accept": "*/*",
          }));
      return response;
    } catch (error) {
      if (error is DioException) {
        log("$error");
        return error.response;
      } else {
        throw Exception(error);
      }
    }
  }

  // UPDATE PASSWORD
  Future<Response?> updatePasswordService(data) async {
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    try {
      String url = "$baseUrl$updatePassword";
      FormData formData = FormData.fromMap(data);
      var response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            "Content-Type": "multipart/form-data",
            "Accept": "*/*",
          }));
      return response;
    } catch (error) {
      if (error is DioException) {
        log("$error");
        return error.response;
      } else {
        throw Exception(error);
      }
    }
  }

  // VERIFY DEVICE OTP
  Future<Response?> verifyDeviceIdService(data) async {
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    try {
      String url = "$baseUrl$verifyDeviceId";
      FormData formData = FormData.fromMap(data);
      var response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            "Content-Type": "multipart/form-data",
            "Accept": "*/*",
          }));
      return response;
    } catch (error) {
      if (error is DioException) {
        log("$error");
        return error.response;
      } else {
        throw Exception(error);
      }
    }
  }

  // LOGIN SERVICE
  Future<Response?> loginUserService(data) async {
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    try {
      String url = "$baseUrl$loginUser";
      FormData formData = FormData.fromMap(data);
      var response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            "Content-Type": "multipart/form-data",
            "Accept": "*/*",
          }));
      return response;
    } catch (error) {
      if (error is DioException) {
        log("$error");
        return error.response;
      } else {
        throw Exception(error);
      }
    }
  }

  // REFRESH TOKEN SERVICE
  Future<Response?> refreshTokenService() async {
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    try {
      String url = "$baseUrl$refreshToken";
      String token = await LocalStorage().fetchUserToken();
      var response = await _dio.get(url,
          options: Options(headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));
      return response;
    } catch (error) {
      if (error is DioException) {
        log("$error");
        return error.response;
      } else {
        throw Exception(error);
      }
    }
  }

  // UPDATE CUSTOMER DETAILS SERVICE
  Future<Response?> updateCustomerDetailsService(data) async {
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    try {
      String url = "$baseUrl$updateCustomerDetails";
      String token = await LocalStorage().fetchUserToken();
      FormData formData = FormData.fromMap(data);
      var response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            "Content-Type": "multipart/form-data",
            "Accept": "*/*",
            "Authorization": "Bearer $token"
          }));
      return response;
    } catch (error) {
      if (error is DioException) {
        log("$error");
        return error.response;
      } else {
        throw Exception(error);
      }
    }
  }

  // GET USER DASHBOARD SERVICE
  Future<Response?> getUserDashboardService() async {
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    try {
      String url = "$baseUrl$getUserDashboard";
      String token = await LocalStorage().fetchUserToken();
      var response = await _dio.get(url,
          options: Options(
              headers: {"Accept": "*/*", "Authorization": "Bearer $token"}));
      return response;
    } catch (error) {
      if (error is DioException) {
        log("$error");
        return error.response;
      } else {
        throw Exception(error);
      }
    }
  }

  // CHANGE PASSWORD SERVICE
  Future<Response?> changePasswordService(data) async {
    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    try {
      String url = "$baseUrl$changePassword";
      String token = await LocalStorage().fetchUserToken();
      FormData formData = FormData.fromMap(data);
      var response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            "Content-Type": "multipart/form-data",
            "Accept": "*/*",
            "Authorization": "Bearer $token"
          }));
      return response;
    } catch (error) {
      if (error is DioException) {
        log("$error");
        return error.response;
      } else {
        throw Exception(error);
      }
    }
  }
}
