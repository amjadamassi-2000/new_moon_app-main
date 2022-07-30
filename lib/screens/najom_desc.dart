import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/data/najomdata.dart';
import 'package:new_moon_app/model/desc_najom.dart';
import 'package:new_moon_app/model/najom.dart';

class najomDesc extends StatefulWidget {
  final Mynajom mynajom;

  najomDesc(this.mynajom);

  @override
  State<najomDesc> createState() => _najomDescState();
}

class _najomDescState extends State<najomDesc> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getnajom();
  }

  Desc_najom mynajomDesc;

  getnajom() {
    mynajomDesc = najom_Desc.firstWhere((element) {
      return element.id == widget.mynajom.descId;
    }) as Desc_najom;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: test2,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "تعريف النجم",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "almarai",
            ),
          ),
        ),
        backgroundColor: test2,
        body: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                  color: item,
                ),
                padding:
                    EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                width: double.infinity,
                child: Text(
                  '${mynajomDesc.Desc}',
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 18.sp,
                    wordSpacing: 2,
                  ),

                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
