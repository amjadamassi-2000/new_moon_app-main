import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/data/fasouldata.dart';
import 'package:new_moon_app/data/najomdata.dart';
import 'package:new_moon_app/items/star_item.dart';
import 'package:new_moon_app/model/fasoul.dart';
import 'package:new_moon_app/model/najom.dart';
import 'package:new_moon_app/screens/najom.dart';

class NajomGrid extends StatefulWidget {
  final id;
  final name;
  final namenajom;

  NajomGrid(this.id, this.name, this.namenajom);

  @override
  State<NajomGrid> createState() => _NajomGridState();
}

class _NajomGridState extends State<NajomGrid> {
  List<dynamic> mynajom;
  Myfasouldsec myfasouldsec;
  getnajom() {
    mynajom = najom_data.where((element) {
      return element.id == widget.id;
    }).toList();
  }

  get_fasoul_desc() {
    myfasouldsec = fasoul_desc.firstWhere((element) => element.id == widget.id);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getnajom();
    get_fasoul_desc();
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
            "نجوم فصل ${widget.namenajom}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: "almarai",
            ),
          ),
        ),
        backgroundColor: test2,

        body: Column(
          children: [
            Text(
              " يمكث كُل نجم فترة زمنية تُقدر بثلاثة عشر يوم عدا الجبهة اربعة عشر يوماً",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                fontFamily: "almarai",
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Container(
                      child: Text(
                        '${myfasouldsec.desc.toString()}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.6,
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      crossAxisCount: 3,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15,
                    ),
                    // number of items in your list
                    itemCount: mynajom.length,
                    itemBuilder: (context, index) {
                      return StarItem(mynajom[index]);
                    }),
              ),
            ),
          ],
        ),

        // ListView.builder(
        //     itemCount: mynajom.length,
        //     itemBuilder: (context, index) {
        //       return najom(mynajom[index]);
        //
        //     }),
      ),
    );
  }
}
