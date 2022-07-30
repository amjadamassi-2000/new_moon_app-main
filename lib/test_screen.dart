import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/const.dart';
import 'components/global_componnets.dart';




class TestScreen extends StatefulWidget {

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: test2,
      body: Center(

        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor, width: 1.5),
            borderRadius: BorderRadius.circular(10),
            color: item,
          ),

          child: Column(
            children: [
              Text(
                "الإكليل",
                style: TextStyle(
                  color: kLightAccent,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: "almarai",
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "18 - أكتوبر",
                style: TextStyle(
                  color: kLightAccent,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "almarai",
                ),
              ),
            ],
          ),

        ),
      )
    );
  }
}
