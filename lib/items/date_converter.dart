import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/global_componnets.dart';
import 'package:new_moon_app/screens/links_screen.dart';

class date_converter extends StatefulWidget {
  @override
  State<date_converter> createState() => _date_converterState();
}

class _date_converterState extends State<date_converter> {
  dynamic value_1;
  dynamic value_2;
  dynamic value_3;

  dynamic result = HijriCalendar().hijriToGregorian(1444, 4, 19);
  dynamic value_4;
  dynamic value_5;
  dynamic value_6;

  dynamic result2 = HijriCalendar.fromDate(DateTime(2020, 8, 20));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: test2,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "محول التاريخ ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "almarai",
          ),
        ),
      ),
      backgroundColor: test2,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 250.w,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'اليوم',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(':', style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('${result.day ?? 0}',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'الشهر',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(':', style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('${result.month ?? 0}',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'السنة',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(':', style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('${result.year ?? 0}',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.h),
                  height: 50.h,
                  width: 200.w,
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: "اكتب اليوم الهجري المراد تحويله ",
                      contentPadding: EdgeInsets.all(12),
                      isDense: true,
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        fontFamily: 'cairo',
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300.withOpacity(0.3),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onChanged: (val) {
                      setState(() {
                        value_1 = int.parse(val);
                      });
                    },
                    onSubmitted: (val) {
                      setState(() {
                        value_1 = int.parse(val);
                        print(value_1);
                        print('submit');
                      });
                    },
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  height: 50.h,
                  width: 200.w,
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: "اكتب الشهر الهجري المراد تحويله ",
                      contentPadding: EdgeInsets.all(12),
                      isDense: true,
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        fontFamily: 'cairo',
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300.withOpacity(0.3),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onChanged: (val) {
                      setState(() {
                        value_2 = int.parse(val);
                      });
                    },
                    onSubmitted: (val) {
                      setState(() {
                        value_2 = int.parse(val);
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  height: 50.h,
                  width: 200.w,
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: " اكتب السنة الهجري المراد تحويله ",
                      contentPadding: EdgeInsets.all(12),
                      isDense: true,
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        fontFamily: 'cairo',
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300.withOpacity(0.3),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onChanged: (val) {
                      setState(() {
                        value_3 = int.parse(val);
                      });
                    },
                    onSubmitted: (val) {
                      setState(() {
                        value_3 = int.parse(val);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                myButton("تحويل", () {
                  //result = gDate.hijriToGregorian(value_3, value_2, value_1);
                  print('${value_1}asdasdasdasdsad');
                  print('${value_2}ششششششش');

                  print('${value_3}ةةةةة');
                  setState(() {
                    result = HijriCalendar()
                        .hijriToGregorian(value_3, value_2, value_1);
                  });
                }),
                Divider(
                  color: Colors.green,
                ),
                Container(
                  width: 250.w,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'اليوم',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(':', style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('${result2.hDay ?? 0}',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'الشهر',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(':', style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('${result2.hMonth ?? 0}',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'السنة',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(':', style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('${result2.hYear ?? 0}',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.h),
                  height: 50.h,
                  width: 200.w,
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: "اكتب اليوم الميلادي المراد تحويله ",
                      contentPadding: EdgeInsets.all(12),
                      isDense: true,
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        fontFamily: 'cairo',
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300.withOpacity(0.3),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onChanged: (val) {
                      setState(() {
                        value_4 = int.parse(val);
                      });
                    },
                    onSubmitted: (val) {
                      setState(() {
                        value_4 = int.parse(val);
                        print(value_1);
                        print('submit');
                      });
                    },
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  height: 50.h,
                  width: 200.w,
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: "اكتب الشهر الميلادي المراد تحويله ",
                      contentPadding: EdgeInsets.all(12),
                      isDense: true,
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        fontFamily: 'cairo',
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300.withOpacity(0.3),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onChanged: (val) {
                      setState(() {
                        value_5 = int.parse(val);
                      });
                    },
                    onSubmitted: (val) {
                      setState(() {
                        value_5 = int.parse(val);
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  height: 50.h,
                  width: 200.w,
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: " اكتب السنة الميلادية المراد تحويله ",
                      contentPadding: EdgeInsets.all(12),
                      isDense: true,
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        fontFamily: 'cairo',
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300.withOpacity(0.3),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onChanged: (val) {
                      setState(() {
                        value_6 = int.parse(val);
                      });
                    },
                    onSubmitted: (val) {
                      setState(() {
                        value_6 = int.parse(val);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                myButton("تحويل", () {
                  //result = gDate.hijriToGregorian(value_3, value_2, value_1);
                  print('${value_1}asdasdasdasdsad');
                  print('${value_2}ششششششش');

                  print('${value_3}ةةةةة');
                  setState(() {
                    result2 = HijriCalendar.fromDate(
                        DateTime(value_6, value_5, value_4));
                  });
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
