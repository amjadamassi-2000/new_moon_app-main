import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:new_moon_app/components/const.dart';




class DateItem extends StatelessWidget {

  Widget child;
  DateItem(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45.h,
      width: 160.w,
      decoration: BoxDecoration(
        color: item,
        borderRadius: BorderRadius.circular(10),
      ) ,
      child: child,
    );
  }
}
