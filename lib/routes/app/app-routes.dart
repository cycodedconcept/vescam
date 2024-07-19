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
import 'package:vescan/screens/dashboard/settings/account/account-settings.dart';
import 'package:vescan/screens/dashboard/settings/account/change-password-success.dart';
import 'package:vescan/screens/dashboard/settings/account/change-password.dart';
import 'package:vescan/screens/dashboard/settings/account/changePasswordLoadingScreen.dart';
import 'package:vescan/screens/dashboard/settings/account/edit-success-screen.dart';
import 'package:vescan/screens/dashboard/settings/account/editLoadingScreen.dart';
import 'package:vescan/screens/dashboard/settings/account/linked-accounts.dart';
import 'package:vescan/screens/dashboard/settings/account/profile-information.dart';
import 'package:vescan/screens/dashboard/settings/notification/notification-settings.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/about/about.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/about/app-version.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/about/developer-information.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/about/release-version.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/app-preference/add-language.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/app-preference/app-preference.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/app-preference/language-settings.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/app-preference/theme-settings.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/legal/legal.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/other-settings.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/privacy-security/privacy-security.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/privacy-security/privacy-settings.dart';
import 'package:vescan/screens/dashboard/settings/other-settings/privacy-security/two-factor-auth.dart';
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

  GetPage(
    name: aboutScreen, 
    page: ()=> AboutScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: appVersionScreen, 
    page: ()=> AppVersionScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: releaseNotesScreen, 
    page: ()=> ReleaseVersionScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: developerInfoScreen, 
    page: ()=> DeveloperInformationScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: legalScreen, 
    page: ()=> LegalScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: privacySecuityScreen, 
    page: ()=> PrivacyAndSecurityScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: privacySettings, 
    page: ()=> PrivacySettingScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: twoFactorAuthScreen, 
    page: ()=> TwoFactorAuthScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: themeSettingsScreen, 
    page: ()=> ThemeSettingsScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: languageSettingsScreen, 
    page: ()=> LanguageSettingsScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: addLanguageScreen, 
    page: ()=> AddLanguageScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: appPreferenceScreen, 
    page: ()=> AppPreferenceScreen(),
    transition: Transition.cupertino
  ),

  GetPage(
    name: profileInformationScreen, 
    page: ()=> ProfileInformationScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: linkedAccountScreen, 
    page: ()=> LinkedAccountScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: changePasswordScreen, 
    page: ()=> ChangePasswordScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: accountSettingsScreen, 
    page: ()=> AccountSettingsScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: passwordChangedSuccessScreen, 
    page: ()=> ChangePasswordSuccessScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: editSuccessfulScreen, 
    page: ()=> EditSuccessScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: changePasswordLoaderScreen, 
    page: ()=> ChangePasswordLoadingScreen(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: editLoaderScreen, 
    page: ()=> EditLoadingScreen(),
    transition: Transition.cupertino
  ),

];
