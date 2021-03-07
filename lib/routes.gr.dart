// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'Screens/ConfirmId.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/OtpVerificationScreen.dart';
import 'Screens/SuccesfullyVerified.dart';
import 'Widgets/MainScreen.dart';

class Routes {
  static const String mainScreen = '/main-screen';
  static const String loginScreen = '/';
  static const String confirmIdScreen = '/confirm-id-screen';
  static const String otpVerificationScreen = '/otp-verification-screen';
  static const String succesfulyVerified = '/succesfuly-verified';
  static const all = <String>{
    mainScreen,
    loginScreen,
    confirmIdScreen,
    otpVerificationScreen,
    succesfulyVerified,
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
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    MainScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MainScreen(),
        settings: data,
      );
    },
    LoginScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen(),
        settings: data,
      );
    },
    ConfirmIdScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ConfirmIdScreen(),
        settings: data,
      );
    },
    OtpVerificationScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OtpVerificationScreen(),
        settings: data,
      );
    },
    SuccesfulyVerified: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SuccesfulyVerified(),
        settings: data,
      );
    },
  };
}
