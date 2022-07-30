import 'package:flutter/material.dart';

import '../components/const.dart';
import '../components/global_componnets.dart';

class EkteranItem extends StatefulWidget {
  String month;
  String day;
  String name;
  final num;

  EkteranItem(this.month, this.day, this.name, this.num);

  @override
  _EkteranItemState createState() => _EkteranItemState();
}

class _EkteranItemState extends State<EkteranItem> {
  @override
  Widget build(BuildContext context) {
    mycolor() {
      if (widget.num == 1) {
        return Colors.blue.shade400;
        //
      }
      if (widget.num == 2) {
        return Colors.green.shade400;
      }
      if (widget.num == 3) {
        return Colors.yellow.shade400;
      }
      if (widget.num == 4) {
        return Colors.brown.shade400;
      }
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3.0,
              spreadRadius: 3.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
          color: mycolor(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myRowItem("شهر  /", "${widget.month}"),
              myRowItem("اليوم /", "${widget.day}"),
              myRowItem("اسم الإقتران /", "${widget.name}"),
            ],
          ),
        ),
      ),
    );
  }
}

/*
 myRowItem("شهر  /" , "يناير "),
    myRowItem("اليوم /" , "11 - يناير "),
    myRowItem("اسم الإقتران /" , "الشتاء"),
 */
