import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_moon_app/components/global_componnets.dart';
import 'package:new_moon_app/screens/najom_desc.dart';

import '../components/const.dart';
import '../model/najom.dart';

class StarItem extends StatefulWidget {
  final Mynajom mynajom;

  StarItem(this.mynajom);

  @override
  _StarItemState createState() => _StarItemState();
}

class _StarItemState extends State<StarItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        To(context, najomDesc(widget.mynajom));
      },
      child: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor, width: 1.5),
          borderRadius: BorderRadius.circular(10),
          color: item,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${widget.mynajom.name}",
              style: TextStyle(
                color: kLightAccent,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                fontFamily: "almarai",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${widget.mynajom.date}",
              style: TextStyle(
                color: kLightAccent,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "almarai",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
