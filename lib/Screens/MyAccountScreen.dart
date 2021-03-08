import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:school_app_project/Widgets/GeneralListViewTiles.dart';
import 'package:school_app_project/Widgets/UserIdSelector.dart';

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  onPressed: () {
                    ExtendedNavigator.of(context).pop();
                  },
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
                  "My Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                // Spacer(),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            UserIdSelector(
              heroTag: "profilePic",
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 20, bottom: 24),
              child: Text(
                "General",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.grey.shade600),
              ),
            ),
            ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, i) => GeneralListViewTiles(
                      icon: icondata[i],
                      title: titles[i],
                      index: i,
                    ),
                separatorBuilder: (context, i) => Divider(),
                itemCount: icondata.length),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    ));
  }
}

final icondata = [
  Icons.person_outline,
  Icons.info_outline,
  Icons.info_outline,
  Icons.info_outline,
  Icons.chat_bubble_outline,
  Icons.logout
];
final titles = [
  "About School",
  "About #school_app_project",
  "Terms & Conditions",
  "Privacy Policy",
  "Support",
  "Log Out"
];
