import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_moon_app/components/global_componnets.dart';

import 'ekteran_item.dart';

class ecteranText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now2 = new DateTime.now();
    DateTime lastDayOfMonth = new DateTime(now2.year, now2.month, now2.day);
    int x3 = lastDayOfMonth.month.toInt();
    int x4 = lastDayOfMonth.day.toInt();
    Widget ekteranItemRow() {
      if (x3 == 1 && x4 == 11) {
        return rowItem("assets/icons/ecteran_icon.png", "حادي برد بادي", 35);
      }

      if (x3 == 2 && x4 == 9) {
        return rowItem("assets/icons/ecteran_icon.png", 'تاسع برد لاسع', 35);
      }

      if (x3 == 3 && x4 == 7) {
        return rowItem("assets/icons/ecteran_icon.png", "سابع مجيع وشابع ", 35);
      }
      if (x3 == 3 && x4 == 25) {
        return rowItem("assets/icons/ecteran_icon.png", " ربيع غامس", 35);
      }

      if (x3 == 4 && x4 == 3) {
        return rowItem("assets/icons/ecteran_icon.png", "ثالث ربيع ذالف", 35);
      }

      if (x3 == 5 && x4 == 27) {
        return rowItem(
            "assets/icons/ecteran_icon.png", "حادي على الماء منادي", 35);
      }

      if (x3 == 6 && x4 == 25) {
        return rowItem("assets/icons/ecteran_icon.png", 'القيظ', 35);
      }

      if (x3 == 7 && x4 == 23) {
        return rowItem("assets/icons/ecteran_icon.png", 'الجوزاء', 35);
      }

      if (x3 == 8 && x4 == 21) {
        return rowItem("assets/icons/ecteran_icon.png", 'سهيل', 35);
      }

      if (x3 == 9 && x4 == 19) {
        return rowItem("assets/icons/ecteran_icon.png", "الصفري - الخريف", 35);
      }

      if (x3 == 10 && x4 == 17) {
        return rowItem("assets/icons/ecteran_icon.png", 'الوسم', 35);
      }

      if (x3 == 11 && x4 == 15) {
        return rowItem("assets/icons/ecteran_icon.png", 'الجوزاوي', 35);
      }

      if (x3 == 12 && x4 == 13) {
        return rowItem("assets/icons/ecteran_icon.png", 'الشتاء', 35);
      } else
        return Container();
    }

    return ekteranItemRow();
  }
}
