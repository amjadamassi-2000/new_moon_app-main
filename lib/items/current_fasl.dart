import 'dart:ffi';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/model/fasoul.dart';

class current_fasl extends StatefulWidget {
  @override
  State<current_fasl> createState() => _current_faslState();
}

class _current_faslState extends State<current_fasl> {
  @override
  Widget build(BuildContext context) {
    DateTime now2 = new DateTime.now();
    DateTime lastDayOfMonth = new DateTime(now2.year, now2.month, now2.day);
    int x3 = lastDayOfMonth.month.toInt();
    int x4 = lastDayOfMonth.day.toInt();

    Myfasoul myfasal() {
      if (x3 >= 6 && x3 < 10) {
        if (x3 == 6 && x4 > 19) {
          return Myfasoul(
              'الصيف', ' ١٩ يونيو', 'assets/images/summer_6.jpg', 7, 1, 92, '');
        }
        if (x3 == 7 || x3 == 8) {
          return Myfasoul(
              'الصيف', ' ١٩ يونيو', 'assets/images/summer_6.jpg', 7, 1, 92, '');
        }
        if (x3 == 9 && x4 < 19) {
          return Myfasoul(
              'الصيف', ' ١٩ يونيو', 'assets/images/summer_6.jpg', 7, 1, 92, '');
        }
      }

      if (x3 >= 9 && x3 < 1) {
        if (x3 == 9 && x4 > 19) {
          return Myfasoul(
              'الخريف', ' ١٩ سبتمبر', 'assets/images/kraif.jpg', 7, 1, 92, '');
        }
        if (x3 == 10 || x3 == 11) {
          return Myfasoul(
              'الخريف', ' ١٩ سبتمبر', 'assets/images/kraif.jpg', 7, 1, 92, '');
        }
        if (x3 == 12 && x4 < 19) {
          return Myfasoul(
              'الخريف', ' ١٩ سبتمبر', 'assets/images/kraif.jpg', 7, 1, 92, '');
        }
      }

      if (x3 >= 12 && x3 < 4) {
        if (x3 == 9 && x4 > 19) {
          return Myfasoul(
              'الشتاء', ' ١٩ ديسمبر', 'assets/images/sitaa.jpeg', 7, 1, 92, '');
        }
        if (x3 == 1 || x3 == 2) {
          return Myfasoul(
              'الشتاء', ' ١٩ ديسمبر', 'assets/images/sitaa.jpeg', 7, 1, 92, '');
        }
        if (x3 == 3 && x4 < 19) {
          return Myfasoul(
              'الشتاء', ' ١٩ ديسمبر', 'assets/images/sitaa.jpeg', 7, 1, 92, '');
        }
      }

      if (x3 >= 3 && x3 < 7) {
        if (x3 == 3 && x4 > 19) {
          return Myfasoul(
              'الربيع', ' ١٩ مارس', 'assets/images/rabie.jpeg', 7, 1, 92, '');
        }
        if (x3 == 4 || x3 == 5) {
          return Myfasoul(
              'الشتاء', ' ١٩ مارس', 'assets/images/rabie.jpeg', 7, 1, 92, '');
        }
        if (x3 == 6 && x4 < 19) {
          return Myfasoul(
              'الشتاء', ' ١٩ مارس', 'assets/images/rabie.jpeg', 7, 1, 92, '');
        }
      } else {
        return null;
      }
    }

    return myfasal() != null
        ? Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      " الفصل الحالي | ",
                      style: TextStyle(
                        color: kDarkPlaceholderText,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "cairo",
                      ),
                    ),
                    Text(
                      "${myfasal().name}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "cairo",
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: kDarkPlaceholderText, width: 1.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/summer_6.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    )),
              ),
            ],
          )
        : Container();
  }
}
