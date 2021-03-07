import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:school_app_project/routes.gr.dart' as routes;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: routes.Router(),
      builder: ExtendedNavigator.builder<routes.Router>(
          router: routes.Router(),
          builder: (context, extendNav) => Theme(
              data: ThemeData(
                primarySwatch: Colors.blue,
              ),
              child: extendNav)),
    );
  }
}
