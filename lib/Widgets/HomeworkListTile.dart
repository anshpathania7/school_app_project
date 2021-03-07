import 'package:flutter/material.dart';

class HomeWorkListTileView extends StatelessWidget {
  final String homework;
  final String subject;
  final String dateGiven;

  const HomeWorkListTileView(
      {Key key, this.homework, this.subject, this.dateGiven})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Color.fromRGBO(211, 224, 234, 0.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              const SizedBox(
                width: 2,
              ),
              Radio(
                value: 1,
                groupValue: 1,
                onChanged: (val) {},
                toggleable: true,
                splashRadius: 22,
              ),
              const SizedBox(
                width: 4,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$homework",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "$subject  /  $dateGiven",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
