import 'package:get/route_manager.dart';
import 'package:vescan/routes/app/app-route-names.dart';
import 'package:vescan/screens/auth/forgot-password/forgot-password.dart';
import 'package:vescan/screens/auth/login/login-loading.dart';
import 'package:vescan/screens/auth/login/login.dart';
import 'package:vescan/screens/auth/login/pin-login.dart';
import 'package:vescan/screens/auth/signup/signup-loading.dart';
import 'package:vescan/screens/auth/signup/signup-success.dart';
import 'package:vescan/screens/auth/signup/signup.dart';
import 'package:vescan/screens/auth/verification/forgot-password-verify.dart';
import 'package:vescan/screens/auth/verification/signup-verify.dart';
import 'package:vescan/screens/dashboard/dashboard.dart';
import 'package:vescan/screens/dashboard/settings/notification/notification-settings.dart';
import 'package:vescan/screens/dashboard/settings/othe-settings/other-settings.dart';
import 'package:vescan/screens/dashboard/settings/support/support-help.dart';
import 'package:vescan/screens/dashboard/settings/vehicle-info/vehicle-info.dart';
import 'package:vescan/screens/onboarding/onboarding-screen.dart';
import 'package:vescan/screens/splash/splash-screen.dart';

List<GetPage> getPage = [

  // ========== APP ROUTES ===========

  GetPage(
    name: splash, 
    page: ()=> SplashScreen(),
    transition: Transition.cupertino
  ),

  GetPage(
    name: onboarding, 
    page: ()=> OnboardingScreen(),
    transition: Transition.cupertino
  ),

  GetPage(
    name: login, 
    page: ()=> LoginScreen(),
    transition: Transition.cupertino
  ),
    GetPage(
    name: loginLoading, 
    page: ()=> LoginLoadingScreen(),
    transition: Transition.cupertino
  ),
    GetPage(
    name: signup, 
    page: ()=> SignUpScreen(),
    transition: Transition.cupertino
  ),
    GetPage(
    name: signupLoading, 
    page: ()=> SignUpLoading(),
    transition: Transition.cupertino
  ),
    GetPage(
    name: signUpVerify, 
    page: ()=> SignUpVerifyEmail(),
    transition: Transition.cupertino
  ),
    GetPage(
    name: signUpSuccess, 
    page: ()=> SignUpSuccessScreen(),
    transition: Transition.cupertino
  ),
    GetPage(
    name: forgotPassword, 
    page: ()=> ForgotPassword(),
    transition: Transition.cupertino
  ),
    GetPage(
    name: forgotPasswordVerify, 
    page: ()=> ForgotPasswordVerifyEmail(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: pinLogin, 
    page: ()=> PinLoginScreen(),
    transition: Transition.cupertino
  ),

  GetPage(
    name: dashboard, 
    page: ()=> Dashboard(),
    transition: Transition.cupertino
  ),

  GetPage(
    name: vehicleInfoScreen, 
    page: ()=> VehicleInfoScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: notificationSettingsScreen, 
    page: ()=> NotificationSettings(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: otherSettingsScreen, 
    page: ()=> OtherSettingsScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: supportScreen, 
    page: ()=> SupportAndHelpScreen(),
    transition: Transition.cupertino
  ),

];
