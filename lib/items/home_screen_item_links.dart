import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/const.dart';
import '../components/global_componnets.dart';
import '../screens/links_screen.dart';





class HomeScreenItemLinks extends StatefulWidget {

  @override
  _HomeScreenItemLinksState createState() => _HomeScreenItemLinksState();
}

class _HomeScreenItemLinksState extends State<HomeScreenItemLinks> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
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
                    "دليل",
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
                    "الصحاري",
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

                    To(context, LinksScreen());

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
