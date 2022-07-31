import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ekteran_item.dart';

class Current_ecteran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now2 = new DateTime.now();
    DateTime lastDayOfMonth = new DateTime(now2.year, now2.month, now2.day);
    int x3 = lastDayOfMonth.month.toInt();
    int x4 = lastDayOfMonth.day.toInt();
    ekteranItem() {
      if (x3 == 1 && x4 == 11) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("يناير", "11 - يناير", "حادي برد بادي", 1),
          ],
        );
      }

      if (x3 == 2 && x4 == 9) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("فبراير", "9 - فبراير", "تاسع برد لاسع", 1),
          ],
        );
      }

      if (x3 == 3 && x4 == 7) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("مارس", " 7 مارس ", "سابع مجيع وشابع", 2),
          ],
        );
      }
      if (x3 == 3 && x4 == 25) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("مارس", "25 مارس ", " ربيع غامس", 2),
          ],
        );
      }

      if (x3 == 4 && x4 == 3) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("ابريل", "3 - ابريل", "ثالث ربيع ذالف", 2),
          ],
        );
      }

      if (x3 == 5 && x4 == 27) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("مايو", "27 - مايو", "حادي على الماء منادي", 2),
          ],
        );
      }

      if (x3 == 6 && x4 == 25) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("حزيران", "25 - حزيران", "القيظ", 3),
          ],
        );
      }

      if (x3 == 7 && x4 == 23) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("تموز", "23 - تموز", "الجوزاء", 3),
          ],
        );
      }

      if (x3 == 8 && x4 == 21) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("اغسطس", "21 - اغسطس", "سهيل", 3),
          ],
        );
      }

      if (x3 == 9 && x4 == 19) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("سبتمبر", "19 - سبتمبر", "الصفري - الخريف", 4),
          ],
        );
      }

      if (x3 == 10 && x4 == 17) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("اكتوبر", "17 - اكتوبر", "الوسم", 4),
          ],
        );
      }

      if (x3 == 11 && x4 == 15) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("نوفمبر", "15 - نوفمبر", "الجوزاوي", 4),
          ],
        );
      }

      if (x3 == 12 && x4 == 13) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        " الإقتران الحالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "almarai",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EkteranItem("ديسمبر", "13 - ديسمبر", "الشتاء", 1),
          ],
        );
      } else
        return Container();
    }

    return ekteranItem();
  }
}
