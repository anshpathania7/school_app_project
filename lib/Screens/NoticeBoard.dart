import 'package:flutter/material.dart';

class NoticeBoard extends StatelessWidget {
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
                height: 36,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(56, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Text(
                    "Notice Board",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  // Spacer(),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, i) => Padding(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
