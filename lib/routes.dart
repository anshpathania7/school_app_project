import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:school_app_project/Screens/ConfirmId.dart';
import 'package:school_app_project/Screens/LoginScreen.dart';
import 'package:school_app_project/Screens/MyAccountScreen.dart';
import 'package:school_app_project/Screens/NoticeBoard.dart';
import 'package:school_app_project/Screens/OtpVerificationScreen.dart';
import 'package:school_app_project/Screens/SuccesfullyVerified.dart';
import 'package:school_app_project/Widgets/MainScreen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: MainScreen,
      initial: false,
    ),
    CustomRoute(
        page: LoginScreen,
        initial: true,
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: ConfirmIdScreen,
        initial: false,
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: OtpVerificationScreen,
        initial: false,
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: SuccesfulyVerified,
        initial: false,
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: NoticeBoard,
        initial: false,
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: MyAccountScreen,
        initial: false,
        transitionsBuilder: TransitionsBuilders.fadeIn)
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
