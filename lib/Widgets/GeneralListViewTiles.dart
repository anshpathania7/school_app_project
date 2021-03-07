import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:school_app_project/routes.gr.dart';

class GeneralListViewTiles extends StatelessWidget {
  final IconData icon;
  final String title;
  final int index;

  const GeneralListViewTiles({Key key, this.icon, this.title, this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (index == 5) {
          ExtendedNavigator.of(context).popAndPush(Routes.loginScreen);
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Row(
          children: [
            Icon(
              icon,
              size: 26,
            ),
            const SizedBox(
              width: 18,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            Spacer(),
            RotatedBox(quarterTurns: 2, child: Icon(Icons.arrow_back_ios))
          ],
        ),
      ),
    );
  }
}
