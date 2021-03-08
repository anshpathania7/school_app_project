import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:school_app_project/Widgets/HomeworkListTile.dart';
import 'package:school_app_project/routes.gr.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: Colors.grey.shade300, width: 1.5)),
                    child: const Icon(
                      Icons.date_range,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Monday",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(127, 127, 127, 1)),
                      ),
                      const Text(
                        "25 October",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(4, 4, 21, 1)),
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () =>
                        ExtendedNavigator.of(context).pushMyAccountScreen(),
                    child: Hero(
                      tag: "profilePic",
                      child: Material(
                        child: CircleAvatar(
                          radius: 36,
                          backgroundImage:
                              AssetImage("Assets/images/Avatar.png"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () =>
                    ExtendedNavigator.of(context).push(Routes.noticeBoard),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            colors: [
                              Colors.lightBlue,
                              Colors.blueAccent,
                              Colors.blue.shade700
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Holi Holiday",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadiusDirectional.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Holiday",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Activate every muscle group to\nget the results you've always\nwanted",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "15th March 2021",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                const SizedBox(width: 6),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                child: Text(
                  "Live Updates",
                  style: TextStyle(
                      color: Color.fromRGBO(112, 112, 112, 1),
                      fontWeight: FontWeight.w300,
                      fontSize: 18),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          height: 109,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.red,
                                    Colors.redAccent.shade200
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.date_range,
                                color: Colors.white,
                                size: 25,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                "90%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Attendance",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 109,
                          width: 100,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(95, 114, 190, 1),
                                    Color.fromRGBO(152, 33, 232, 1)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.notes,
                                color: Colors.white,
                                size: 25,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                "B-Grade",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Progress",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 109,
                          width: 100,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(255, 221, 0, 1),
                                    Color.fromRGBO(251, 176, 52, 1)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.money,
                                color: Colors.white,
                                size: 25,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                "No Due",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Fees",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                child: Text(
                  "Homework",
                  style: TextStyle(
                      color: Color.fromRGBO(112, 112, 112, 1),
                      fontWeight: FontWeight.w300,
                      fontSize: 18),
                ),
              ),
              ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                children: [
                  HomeWorkListTileView(
                    dateGiven: "Today",
                    homework: "Learn Chapter 5 with one Essay",
                    subject: "Engish",
                  ),
                  HomeWorkListTileView(
                    dateGiven: "Today",
                    homework: "Exerscise Trigonometry 1st Topic",
                    subject: "Maths",
                  ),
                  HomeWorkListTileView(
                    dateGiven: "Yesterday",
                    homework: "Hindi writing 3 pages",
                    subject: "Hindi",
                  ),
                  HomeWorkListTileView(
                    dateGiven: "Yesterday",
                    homework: "Test for History first session",
                    subject: "Social Science",
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
