import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/data/najomdata.dart';
import 'package:flutter/material.dart';
import 'package:new_moon_app/items/star_item.dart';

class all_najom extends StatefulWidget {
  const all_najom({Key key}) : super(key: key);

  @override
  State<all_najom> createState() => _all_najomState();
}

class _all_najomState extends State<all_najom> {
  List<dynamic> mynajom;

  getnajom() {
    mynajom = najom_data.map((e) => e).toList();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getnajom();
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
            "كل النجوم",
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
            SizedBox(
              height: 50,
            ),
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
              height: 50,
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
