import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:school_app_project/Widgets/UserIdSelector.dart';
import 'package:school_app_project/routes.gr.dart';

class ConfirmIdScreen extends StatefulWidget {
  @override
  _ConfirmIdScreenState createState() => _ConfirmIdScreenState();
}

class _ConfirmIdScreenState extends State<ConfirmIdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
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
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Choose the account",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.2),
                    ),
                    Spacer(),
                    Text(
                      "confirm your id",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.1),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              UserIdSelector(),
              Spacer(),
              Center(
                  child: Text(
                      "By continuing, you agree to the #school_app_project")),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Terms of Service",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(" & "),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(4, 93, 223, 1),
                          borderRadius: BorderRadius.circular(16)),
                      child: InkWell(
                        onTap: () => ExtendedNavigator.of(context).pop(),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.68,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(4, 93, 223, 1),
                          borderRadius: BorderRadius.circular(16)),
                      child: InkWell(
                        onTap: () => ExtendedNavigator.of(context)
                            .push(Routes.otpVerificationScreen),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
