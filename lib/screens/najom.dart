import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/global_componnets.dart';
import 'package:new_moon_app/components/najomdisplay.dart';
import 'package:new_moon_app/model/najom.dart';
import 'package:new_moon_app/screens/najom_desc.dart';

class najom extends StatefulWidget {
  final Mynajom mynajom;

  najom(this.mynajom);


  @override
  State<najom> createState() => _najomState();
}

class _najomState extends State<najom> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: InkWell(
        onTap: () {
          To(context, najomDesc(widget.mynajom));
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 70.h,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  padding: EdgeInsets.only(right: 10.r),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            " أسم النجم  ",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "cairo",
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              " ${widget.mynajom.name} ",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "cairo",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "عدد أيامه",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "cairo",
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              " ${widget.mynajom.day} يوم ",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "cairo",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
