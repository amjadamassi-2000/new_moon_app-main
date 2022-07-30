import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:http/http.dart' as http;

class AdminScreen extends StatefulWidget {
  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: test2,
        appBar: AppBar(
          backgroundColor: test2,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "الملاحظات",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "cairo",
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 70.h),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: "اكتب ملاحظة في الصفحة الرئيسية",
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
                  onChanged: (value) {
                    final url =
                        'https://moonapp-f63aa-default-rtdb.firebaseio.com/product/-N7fCYSPhAkZFeZxE7Nw.json';
                    final uri = Uri.parse(url);
                    http.patch(uri,
                        body: json.encode({
                          'title': '${value.toString()}',
                        }));
                  },
                ),
                SizedBox(height: 20.h),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  onChanged: (value) {
                    final url =
                        'https://moonapp-f63aa-default-rtdb.firebaseio.com/product/-N7fDNmSLr9dbubGmZiP.json';
                    final uri = Uri.parse(url);
                    http.patch(uri,
                        body: json.encode({
                          'title': '${value.toString()}',
                        }));
                  },
                  decoration: InputDecoration(
                    hintText: "اكتب ملاحظة في الأقترانات  ",
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
                ),
                SizedBox(height: 20.h),
                TextField(
                  onChanged: (value) {
                    final url =
                        'https://moonapp-f63aa-default-rtdb.firebaseio.com/product/-N7wdvinqa-JRt2hkXUa.json';
                    final uri = Uri.parse(url);
                    http.patch(uri,
                        body: json.encode({
                          'title': '${value.toString()}',
                        }));
                  },
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: "ضع رابط في القائمة الجانبية",
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
                ),
                SizedBox(height: 30.h),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff060a22),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "حفظ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "cairo",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
