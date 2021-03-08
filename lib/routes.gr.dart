// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'Screens/ConfirmId.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/MyAccountScreen.dart';
import 'Screens/NoticeBoard.dart';
import 'Screens/OtpVerificationScreen.dart';
import 'Screens/SuccesfullyVerified.dart';
import 'Widgets/MainScreen.dart';

class Routes {
  static const String mainScreen = '/main-screen';
  static const String loginScreen = '/';
  static const String confirmIdScreen = '/confirm-id-screen';
  static const String otpVerificationScreen = '/otp-verification-screen';
  static const String succesfulyVerified = '/succesfuly-verified';
  static const String noticeBoard = '/notice-board';
  static const String myAccountScreen = '/my-account-screen';
  static const all = <String>{
    mainScreen,
    loginScreen,
    confirmIdScreen,
    otpVerificationScreen,
    succesfulyVerified,
    noticeBoard,
    myAccountScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.mainScreen, page: MainScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.confirmIdScreen, page: ConfirmIdScreen),
    RouteDef(Routes.otpVerificationScreen, page: OtpVerificationScreen),
    RouteDef(Routes.succesfulyVerified, page: SuccesfulyVerified),
    RouteDef(Routes.noticeBoard, page: NoticeBoard),
    RouteDef(Routes.myAccountScreen, page: MyAccountScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    MainScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const MainScreen(),
        settings: data,
      );
    },
    LoginScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    ConfirmIdScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ConfirmIdScreen(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    OtpVerificationScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            OtpVerificationScreen(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    SuccesfulyVerified: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SuccesfulyVerified(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    NoticeBoard: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => NoticeBoard(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    MyAccountScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            MyAccountScreen(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushMainScreen() => push<dynamic>(Routes.mainScreen);

  Future<dynamic> pushLoginScreen() => push<dynamic>(Routes.loginScreen);

  Future<dynamic> pushConfirmIdScreen() =>
      push<dynamic>(Routes.confirmIdScreen);

  Future<dynamic> pushOtpVerificationScreen() =>
      push<dynamic>(Routes.otpVerificationScreen);

  Future<dynamic> pushSuccesfulyVerified() =>
      push<dynamic>(Routes.succesfulyVerified);

  Future<dynamic> pushNoticeBoard() => push<dynamic>(Routes.noticeBoard);

  Future<dynamic> pushMyAccountScreen() =>
      push<dynamic>(Routes.myAccountScreen);
}
