import 'package:auto_route/auto_route_annotations.dart';
import 'package:school_app_project/Screens/ConfirmId.dart';
import 'package:school_app_project/Screens/LoginScreen.dart';
import 'package:school_app_project/Screens/OtpVerificationScreen.dart';
import 'package:school_app_project/Screens/SuccesfullyVerified.dart';
import 'package:school_app_project/Widgets/MainScreen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: MainScreen, initial: false),
    MaterialRoute(page: LoginScreen, initial: true),
    MaterialRoute(page: ConfirmIdScreen, initial: false),
    MaterialRoute(page: OtpVerificationScreen, initial: false),
    MaterialRoute(page: SuccesfulyVerified, initial: false)
  ],
)
class $Router {}
