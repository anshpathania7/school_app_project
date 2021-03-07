import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:school_app_project/routes.gr.dart';

class SuccesfulyVerified extends StatefulWidget {
  @override
  _SuccesfulyVerifiedState createState() => _SuccesfulyVerifiedState();
}

class _SuccesfulyVerifiedState extends State<SuccesfulyVerified> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),
        () => ExtendedNavigator.of(context).popAndPush(Routes.mainScreen));
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 150,
                width: 150,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(4, 93, 233, 1),
                    borderRadius: BorderRadius.circular(100)),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                      child: Icon(
                    Icons.check,
                    color: Color.fromRGBO(4, 93, 233, 1),
                    size: 66,
                  )),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Succesfully Verified",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
