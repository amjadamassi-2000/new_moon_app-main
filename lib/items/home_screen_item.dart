import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:new_moon_app/components/calendar.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/global_componnets.dart';
import 'package:new_moon_app/data/grid_view_data.dart';
import 'package:http/http.dart' as http;

import '../cleandersScreen/mycleanders.dart';

class HomeScreenItemCalender extends StatefulWidget {
  @override
  State<HomeScreenItemCalender> createState() => _HomeScreenItemCalenderState();
}

class _HomeScreenItemCalenderState extends State<HomeScreenItemCalender> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 45,
          child: Container(
            height: 170.h,
            width: 150.w,
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor, width: 1.5),
              borderRadius: BorderRadius.circular(10),
              color: item,
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  Text(
                    "التقويم ",
                    style: TextStyle(
                      color: kLightAccent,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "almarai",
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "ميلادي و هجري",
                    style: TextStyle(
                      color: kLightAccent,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "almarai",
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  myButton("عرض", () async {
                    To(context, Cleanders());
                  }),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: SizedBox(
              height: 70.h,
              child: Image.asset(
                "assets/icons/item_icon.png",
                width: 90,
              )),
        ),
      ],
    );
  }
}
