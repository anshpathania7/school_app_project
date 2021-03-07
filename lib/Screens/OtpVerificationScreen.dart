import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:school_app_project/routes.gr.dart';

class OtpVerificationScreen extends StatefulWidget {
  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(4, 93, 223, 1),
                      borderRadius: BorderRadius.circular(16)),
                ),
                const SizedBox(
                  height: 36,
                ),
                SizedBox(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Verify your number",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.2),
                      ),
                      Spacer(),
                      Text(
                        "enter the otp sent to +9190055175380",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.1),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                PinPut(
                  fieldsCount: 4,
                  obscureText: "*",
                  eachFieldHeight: 60,
                  eachFieldWidth: 60,
                  textStyle: TextStyle(fontSize: 56, color: Colors.white),
                  autofocus: false,
                  onChanged: (val) {
                    if (val.length == 4) {
                      ExtendedNavigator.of(context)
                          .push(Routes.succesfulyVerified);
                    }
                  },
                  eachFieldPadding: EdgeInsets.only(top: 8),
                  submittedFieldDecoration: BoxDecoration(
                      color: Color.fromRGBO(4, 93, 223, 1),
                      borderRadius: BorderRadiusDirectional.circular(12)),
                  selectedFieldDecoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadiusDirectional.circular(12)),
                  followingFieldDecoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadiusDirectional.circular(12)),
                  disabledDecoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadiusDirectional.circular(12)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Having a trouble? request a new OTP in ",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "00:30",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
