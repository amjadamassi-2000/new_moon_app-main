import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:intl/intl.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/global_componnets.dart';
import 'package:new_moon_app/components/najomdisplay.dart';
import 'package:new_moon_app/model/fasoul.dart';

class fasoul_item extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final Myfasoul myfasoul;

  fasoul_item(this.myfasoul);

  @override
  State<fasoul_item> createState() => _fasoul_itemState();
}

class _fasoul_itemState extends State<fasoul_item> {
  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    var formatter = new DateFormat('MM');
    String formattedDate = formatter.format(now);

    print(formattedDate.toString());

    return SingleChildScrollView(
      child: InkWell(
        onTap: () {
          To(
              context,
              NajomGrid(widget.myfasoul.id, widget.myfasoul.name,
                  widget.myfasoul.namefornajom));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.h,
            ),
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
                        "   ${widget.myfasoul.name}",
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: kDarkPlaceholderText, width: 1.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        '${widget.myfasoul.image}',
                        fit: BoxFit.fill,
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "بداية الفصل",
                    style: TextStyle(
                      color: kLightAccent,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "almarai",
                    ),
                  ),
                  Text(
                    "${widget.myfasoul.date}  ",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "almarai",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "عدد النجوم",
                    style: TextStyle(
                      color: kLightAccent,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "almarai",
                    ),
                  ),
                  Text(
                    "${widget.myfasoul.najom}  ",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "almarai",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10)
                  .add(EdgeInsets.only(bottom: 10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "عدد الأيام",
                    style: TextStyle(
                      color: kLightAccent,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "almarai",
                    ),
                  ),
                  Text(
                    "${widget.myfasoul.days}  ",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "almarai",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
