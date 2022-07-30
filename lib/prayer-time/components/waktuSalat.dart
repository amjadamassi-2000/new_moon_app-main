import 'package:flutter/material.dart';
import 'package:new_moon_app/prayer-time/utils/constants.dart';

import '../../components/const.dart';

class WaktuSalat extends StatelessWidget {
  final name;
  final time;
  WaktuSalat({this.name, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration:
          BoxDecoration(color: Colors.grey.shade500.withOpacity(0.2), borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              fontFamily: "almarai",

            ),
          ),
          Row(
            children: <Widget>[
              Text(
                time,
                style:
                    TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      fontFamily: "almarai",

                    ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.alarm, color: Colors.white)
            ],
          )
        ],
      ),
    );
  }
}
