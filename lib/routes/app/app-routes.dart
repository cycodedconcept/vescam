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
import 'package:vescan/screens/dashboard/home/add-device/add-device-info-loading.dart';
import 'package:vescan/screens/dashboard/home/add-device/add-device-success.dart';
import 'package:vescan/screens/dashboard/home/add-device/add-new-device.dart';
import 'package:vescan/screens/dashboard/home/add-device/device-info.dart';
import 'package:vescan/screens/dashboard/home/add-device/device-info2.dart';
import 'package:vescan/screens/dashboard/home/add-device/generating-other-info.dart';
import 'package:vescan/screens/dashboard/home/add-device/scan-qr-code.dart';
import 'package:vescan/screens/dashboard/home/add-vehicle-info/add-vehicle-info-loading.dart';
import 'package:vescan/screens/dashboard/home/add-vehicle-info/add-vehicle-info.dart';
import 'package:vescan/screens/dashboard/home/add-vehicle-info/add-vehicle-success.dart';
import 'package:vescan/screens/dashboard/home/book-tow-machine/book-tow-machine.dart';
import 'package:vescan/screens/dashboard/home/book-tow-machine/search-for-tow-loading.dart';
import 'package:vescan/screens/dashboard/home/book-tow-machine/search-for-tow-machine.dart';
import 'package:vescan/screens/dashboard/home/book-tow-machine/search-tow-input-screen.dart';
import 'package:vescan/screens/dashboard/home/book-tow-machine/tow-company-profile.dart';
import 'package:vescan/screens/dashboard/home/contact-mechanic/contact-mechanic-screen.dart';
import 'package:vescan/screens/dashboard/home/contact-mechanic/mechanic-profile-screen.dart';
import 'package:vescan/screens/dashboard/home/contact-mechanic/search-mechanic.dart';
import 'package:vescan/screens/dashboard/home/contact-mechanic/searchMechanicInput.dart';
import 'package:vescan/screens/dashboard/home/contact-mechanic/searchMechanicLoading.dart';
import 'package:vescan/screens/dashboard/notifications/activity-screen.dart';
import 'package:vescan/screens/dashboard/auto-parts/views/cart-screen.dart';
import 'package:vescan/screens/dashboard/auto-parts/views/favorites-view.dart';
import 'package:vescan/screens/dashboard/auto-parts/views/product-view.dart';
import 'package:vescan/screens/dashboard/dashboard.dart';
import 'package:vescan/screens/dashboard/notifications/notification-screen.dart';
import 'package:vescan/screens/dashboard/scan/scan-connecting/diagnostic-report.dart';
import 'package:vescan/screens/dashboard/scan/scan-connecting/error-details/error-cleared.dart';
import 'package:vescan/screens/dashboard/scan/scan-connecting/error-details/error-clearing-loading.dart';
import 'package:vescan/screens/dashboard/scan/scan-connecting/error-details/error-code-detail-screen.dart';
import 'package:vescan/screens/dashboard/scan/scan-connecting/error-details/error-details-screen.dart';
import 'package:vescan/screens/dashboard/scan/scan-connecting/obd-scanning.dart';
import 'package:vescan/screens/dashboard/scan/scan-connecting/scan-completed.dart';
import 'package:vescan/screens/dashboard/scan/scan-connecting/scan-connecting.dart';
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
import 'package:vescan/screens/dashboard/settings/set-pid-threshold/set-pid-threshold-screen.dart';
import 'package:vescan/screens/dashboard/settings/support/support-help.dart';
import 'package:vescan/screens/dashboard/settings/vehicle-info/vehicle-info.dart';
import 'package:vescan/screens/dashboard/wallet/add-card-details/add-card-details.dart';
import 'package:vescan/screens/dashboard/wallet/add-card-details/bank-otp-verification.dart';
import 'package:vescan/screens/dashboard/wallet/add-card-details/select-bank-screen.dart';
import 'package:vescan/screens/dashboard/wallet/card-top-up/enter-details.dart';
import 'package:vescan/screens/dashboard/wallet/card-top-up/top-up-card-amount.dart';
import 'package:vescan/screens/dashboard/wallet/card-top-up/top-up-loading.dart';
import 'package:vescan/screens/dashboard/wallet/transactions/transaction-screen.dart';
import 'package:vescan/screens/dashboard/wallet/transfer/bank-transfer.dart';
import 'package:vescan/screens/dashboard/wallet/transfer/screens/transfer-loading.dart';
import 'package:vescan/screens/dashboard/wallet/transfer/transfer-confirm-screen.dart';
import 'package:vescan/screens/dashboard/wallet/transfer/transfer-money.dart';
import 'package:vescan/screens/dashboard/wallet/ussd-flow/bank-ussd.dart';
import 'package:vescan/screens/dashboard/wallet/ussd-flow/dial-ussd.dart';
import 'package:vescan/screens/dashboard/wallet/fund-wallet.dart';
import 'package:vescan/screens/onboarding/onboarding-screen.dart';
import 'package:vescan/screens/splash/splash-screen.dart';

import '../../screens/dashboard/wallet/card-top-up/top-up-success.dart';

List<GetPage> getPage = [
  // ========== APP ROUTES ===========

  GetPage(
      name: splash,
      page: () => SplashScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: onboarding,
      page: () => OnboardingScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: login, page: () => LoginScreen(), transition: Transition.cupertino),
  GetPage(
      name: loginLoading,
      page: () => LoginLoadingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: signup,
      page: () => SignUpScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: signupLoading,
      page: () => SignUpLoading(),
      transition: Transition.cupertino),
  GetPage(
      name: signUpVerify,
      page: () => SignUpVerifyEmail(),
      transition: Transition.cupertino),
  GetPage(
      name: signUpSuccess,
      page: () => SignUpSuccessScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: forgotPassword,
      page: () => ForgotPassword(),
      transition: Transition.cupertino),
  GetPage(
      name: forgotPasswordVerify,
      page: () => ForgotPasswordVerifyEmail(),
      transition: Transition.cupertino),
  GetPage(
      name: pinLogin,
      page: () => PinLoginScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: dashboard,
      page: () => Dashboard(),
      transition: Transition.cupertino),

  GetPage(
      name: vehicleInfoScreen,
      page: () => VehicleInfoScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: notificationSettingsScreen,
      page: () => NotificationSettings(),
      transition: Transition.cupertino),
  GetPage(
      name: otherSettingsScreen,
      page: () => OtherSettingsScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: supportScreen,
      page: () => SupportAndHelpScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: aboutScreen,
      page: () => AboutScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: appVersionScreen,
      page: () => AppVersionScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: releaseNotesScreen,
      page: () => ReleaseVersionScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: developerInfoScreen,
      page: () => DeveloperInformationScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: legalScreen,
      page: () => LegalScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: privacySecuityScreen,
      page: () => PrivacyAndSecurityScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: privacySettings,
      page: () => PrivacySettingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: twoFactorAuthScreen,
      page: () => TwoFactorAuthScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: themeSettingsScreen,
      page: () => ThemeSettingsScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: languageSettingsScreen,
      page: () => LanguageSettingsScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: addLanguageScreen,
      page: () => AddLanguageScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: appPreferenceScreen,
      page: () => AppPreferenceScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: setPidThresholdsScreen,
      page: () => SetPidThresholdScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: profileInformationScreen,
      page: () => ProfileInformationScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: linkedAccountScreen,
      page: () => LinkedAccountScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: accountSettingsScreen,
      page: () => AccountSettingsScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: passwordChangedSuccessScreen,
      page: () => ChangePasswordSuccessScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: editSuccessfulScreen,
      page: () => EditSuccessScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: changePasswordLoaderScreen,
      page: () => ChangePasswordLoadingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: editLoaderScreen,
      page: () => EditLoadingScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: fundWalletScreen,
      page: () => FundWalletScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: bankUssdScreen,
      page: () => BankUssdScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: dialUssdCodeScreen,
      page: () => DialUssdCodeScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: bankTransferScreen,
      page: () => BankTransferScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: transferMoneyScreen,
      page: () => TransferMoneyScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: transferLoadingScreen,
      page: () => TransferLoadingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: transferConfirmScreen,
      page: () => TransferConfirmScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: transactionScreen,
      page: () => TransactionScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: topUpAmountScreen,
      page: () => TopUpAmountScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: transactionLoadingScreen,
      page: () => TopUpLoadingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: topUpAddDetailsScreen,
      page: () => TopUpAddDetailsScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: topUpSuccessScreen,
      page: () => TopUpSuccessScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: addBankDetailsScreen,
      page: () => AddCardDetailsScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: bankOtpVerificationScreen,
      page: () => BankOtpVerificationScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: selectBankScreen,
      page: () => SelectBankScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: productCartScreen,
      page: () => ProductCartScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: favoriteProductScreen,
      page: () => FavoritesViewScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: productDetailsScreen,
      page: () => ProductViewScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: activityScreen,
      page: () => ActivityScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: scanConnectingScreen,
      page: () => ScanConnectingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: scanCompletedScreen,
      page: () => ScanCompletedScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: diagnosticScreen,
      page: () => DiagnosticReportScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: obdScanningScreen,
      page: () => OBDScanningScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: errorDetailsScreen,
      page: () => ErrorDetailsScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: errorCodeDetailsScreen,
      page: () => ErrorCodeDetailScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: errorClearLoadingScreen,
      page: () => ErrorClearingLoadingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: errorClearedScreen,
      page: () => ErrorClearedScreen(),
      transition: Transition.cupertino),
  

  GetPage(
      name: addNewDeviceScreen,
      page: () => AddNewDeviceScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: scanQRCodeScreen,
      page: () => ScanQRCodeScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: deviceInformationScreen,
      page: () => DeviceInfoScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: generatingOtherInfoScreen,
      page: () => GeneratingOtherInfoScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: deviceInformationScreen2,
      page: () => DeviceInfoScreen2(),
      transition: Transition.cupertino),
  GetPage(
      name: addDeviceLoadingScreen,
      page: () => AddDeviceLoadingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: newDeviceAddedScreen,
      page: () => AddDeviceSuccessScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: vehicleInformationScreen,
      page: () => AddVehicleInformationScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: addVehicleLoadingScreen,
      page: () => AddVehicleInfoLoadingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: newVehicleAddedScreen,
      page: () => AddVehicleSuccessScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: contactMechanicScreen,
      page: () => ContactMechanicScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: searchForMechanicScreen,
      page: () => SearchMechanicScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: searchMechanicLoadingScreen,
      page: () => SearchMechanicLoadingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: searchMechanicInputScreen,
      page: () => SearchMechanicInputScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: mechanicProfileScreen,
      page: () => MechanicProfileScreen(),
      transition: Transition.cupertino),

  GetPage(
      name: bookATowScreen,
      page: () => BookTowMachineScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: searchForTowScreen,
      page: () => SearchForTowCompanyScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: searchTowInputScreen,
      page: () => SearchForTowCompanyInputScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: searchTowLoadingScreen,
      page: () => SearchForTowCompanyLoadingScreen(),
      transition: Transition.cupertino),
  GetPage(
      name: towCompanyProfileScreen,
      page: () => TowCompanyProfileScreen(),
      transition: Transition.cupertino),
];
