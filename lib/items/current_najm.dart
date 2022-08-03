import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:new_moon_app/components/global_componnets.dart';

class current_najm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now2 = new DateTime.now();
    DateTime lastDayOfMonth = new DateTime(now2.year, now2.month, now2.day);
    int x3 = lastDayOfMonth.month.toInt();
    int x4 = lastDayOfMonth.day.toInt();
    //    rowItem(   "assets/icons/star_today_icon.png", ' نجم الإكليل', 35),
    Widget nijomItmeRow() {
      if (x3 == 12 && x4 >= 7 && x4 <= 19) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الإكليل', 35);
      }
      if (x3 == 12 && x4 >= 20) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم القلب', 35);
      }
      if (x3 == 1 && x4 == 1) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم القلب', 35);
      }
      if (x3 == 1 && x4 >= 2 && x4 <= 14) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الشولة', 35);
      }
      if (x3 == 1 && x4 >= 15 && x4 <= 27) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم النعائم', 35);
      }
      if (x3 == 1 && x4 >= 28) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم البلدة', 35);
      }
      if (x3 == 2 && x4 <= 9) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم البلدة', 35);
      }
      if (x3 == 2 && x4 >= 10 && x4 <= 22) {
        return rowItem(
            "assets/icons/star_today_icon.png", ' نجم سعد الذابح', 35);
      }
      if (x3 == 2 && x4 >= 23) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم سعد بلع', 35);
      }
      if (x3 == 3 && x4 <= 7) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم سعد بلع', 35);
      }
      if (x3 == 3 && x4 <= 8) {
        return rowItem(
            "assets/icons/star_today_icon.png", ' نجم سعد السعود', 35);
      }
      if (x3 == 3 && x4 >= 8 && x4 <= 20) {
        return rowItem(
            "assets/icons/star_today_icon.png", ' نجم سعد السعود', 35);
      }
      if (x3 == 3 && x4 >= 21) {
        return rowItem(
            "assets/icons/star_today_icon.png", ' نجم سعد الاخبية', 35);
      }
      if (x3 == 4 && x4 <= 2) {
        return rowItem(
            "assets/icons/star_today_icon.png", ' نجم سعد الاخبية', 35);
      }
      if (x3 == 4 && x4 >= 3 && x4 <= 15) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم المقدم', 35);
      }
      if (x3 == 4 && x4 >= 16 && x4 <= 28) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم المؤخر', 35);
      }
      if (x3 == 4 && x4 <= 29) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الرشاء', 35);
      }
      if (x3 == 5 && x4 <= 11) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم المؤخر', 35);
      }
      if (x3 == 5 && x4 >= 12 && x4 <= 24) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الشريطين', 35);
      }
      if (x3 == 5 && x4 >= 25) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم البطين', 35);
      }
      if (x3 == 6 && x4 <= 6) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم البطين', 35);
      }
      if (x3 == 6 && x4 >= 7 && x4 <= 19) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الثريا', 35);
      }
      if (x3 == 6 && x4 >= 20) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الدبران', 35);
      }
      if (x3 == 7 && x4 <= 2) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الدبران', 35);
      }
      if (x3 == 7 && x4 >= 3 && x4 <= 15) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الهقعة', 35);
      }
      if (x3 == 7 && x4 >= 16 && x4 <= 28) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الهنعة', 35);
      }
      if (x3 == 7 && x4 >= 29) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الذراع', 35);
      }
      if (x3 == 8 && x4 <= 10) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الذراع', 35);
      }
      if (x3 == 8 && x4 >= 11 && x4 <= 23) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم النثرة', 35);
      }
      if (x3 == 8 && x4 >= 24) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الطرفة', 35);
      }
      if (x3 == 9 && x4 <= 5) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الطرفة', 35);
      }
      if (x3 == 9 && x4 >= 6 && x4 < 20) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الجبهة', 35);
      }
      if (x3 == 9 && x4 >= 20) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الزبرة', 35);
      }
      if (x3 == 10 && x4 <= 2) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الزبرة', 35);
      }
      if (x3 == 10 && x4 >= 3 && x4 < 15) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الجبهة', 35);
      }
      if (x3 == 10 && x4 >= 16 && x4 < 28) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم العواء', 35);
      }
      if (x3 == 10 && x4 >= 28) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم السماك', 35);
      }
      if (x3 == 11 && x4 <= 10) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم السماك', 35);
      }
      if (x3 == 11 && x4 >= 11 && x4 < 24) {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الغفر', 35);
      } else {
        return rowItem("assets/icons/star_today_icon.png", ' نجم الزبانا', 35);
      }
    }

    return nijomItmeRow();
  }
}
