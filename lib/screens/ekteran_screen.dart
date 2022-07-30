import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/const.dart';
import '../components/global_componnets.dart';
import '../data/ekteran_data.dart';
import '../items/ekteran_item.dart';

class EcteranScreen extends StatefulWidget {
  @override
  _EcteranScreenState createState() => _EcteranScreenState();
}

class _EcteranScreenState extends State<EcteranScreen> {
  Future<String> getText() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get('ecteran');
  }

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
            "اقترانات القمر والثريا",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "almarai",
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(width: 1, color: Colors.grey),
                    // color: item,
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: FutureBuilder<String>(
                        future: getText(), // async work
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return Text('Loading....');
                            default:
                              if (snapshot.hasError)
                                return Text('Error: ${snapshot.error}');
                              else
                                return Text(
                                  ' ${snapshot.data}',
                                  style: TextStyle(
                                    height: 1.5,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                    wordSpacing: 2,
                                    fontFamily: "almarai",
                                  ),
                                );
                          }
                        },
                      )),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10, right: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 15.h,
                            width: 15.w,
                            decoration:
                                BoxDecoration(color: Colors.blue.shade400),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            ':',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'إقترانات فصل الشتاء',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 15.h,
                            width: 15.w,
                            decoration:
                                BoxDecoration(color: Colors.green.shade400),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            ':',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'إقترانات فصل الربيع',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 15.h,
                            width: 15.w,
                            decoration:
                                BoxDecoration(color: Colors.yellow.shade400),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            ':',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'إقترانات فصل الصيف',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 15.h,
                            width: 15.w,
                            decoration:
                                BoxDecoration(color: Colors.brown.shade400),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            ':',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'إقترانات فصل الخريف',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 10),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ekteranData.length,
                    itemBuilder: (context, index) {
                      return ekteranData[index];
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
