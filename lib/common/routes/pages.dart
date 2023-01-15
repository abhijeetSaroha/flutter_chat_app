// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat_app/common/routes/names.dart';
import 'package:flutter_chat_app/screens/welcome/index.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const APPLICATION = AppRoutes.Application;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      // ],
    ),
  ];
}
