import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/global_componnets.dart';
import 'package:new_moon_app/screens/ekteran_screen.dart';

import '../screens/Currency Converter/home_curremcy.dart';

class Currency_Converter extends StatelessWidget {
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
                    "التحويلات",
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
                    "المالية",
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
                    To(context, MyAppcurrency());
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
