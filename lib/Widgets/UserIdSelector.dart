import 'package:flutter/material.dart';

class UserIdSelector extends StatelessWidget {
  final String heroTag;

  const UserIdSelector({Key key, this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          (heroTag.isNotEmpty)
              ? Hero(
                  tag: heroTag,
                  child: Material(
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("Assets/images/Avatar.png"),
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("Assets/images/Avatar.png"),
                ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pratibha Yadav",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(4, 93, 233, 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 22),
                    child: Text(
                      "Class VIII A",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                minimumSize: Size(56, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                )),
            child: RotatedBox(
              quarterTurns: 3,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black87,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 2,
          )
        ],
      ),
    );
  }
}
