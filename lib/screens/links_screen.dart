import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/const.dart';
import '../components/global_componnets.dart';






class LinksScreen extends StatefulWidget {
  @override
  _LinksScreenState createState() => _LinksScreenState();
}

class _LinksScreenState extends State<LinksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: test2,
      appBar: AppBar(
        backgroundColor: test2,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "دليل الصحاري",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "almarai",
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70,),


              myLinksRowItem(

                "تطبيق مابز مي للاندرويد",
                    () async {
                  final url = "https://play.google.com/store/apps/details?id=com.mapswithme.maps.pro";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }

                },
              ),

              myLinksRowItem(

                "تطبيق مابز مي للايفون",
                    () async {
                  final url = "https://apps.apple.com/sa/app/maps-me-%D8%AE%D8%B1%D8%A7%D8%A6%D8%B7-%D8%AD%D8%A7%D9%84%D9%8A%D8%A7-%D8%A7%D9%84%D9%85%D9%84%D8%A7%D8%AD%D8%A9/id510623322?l=ar";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }

                },
              ),




              myLinksRowItem(
                "تطبيق احداثيات للاندرويد",
                    () async {
                  final url = "https://play.google.com/store/apps/details?id=com.ehdathiat";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),



              myLinksRowItem(
                "تطبيق احداثيات للايفون",
                    () async {
                  final url = "https://apps.apple.com/sa/app/%D8%A5%D8%AD%D8%AF%D8%A7%D8%AB%D9%8A%D8%A7%D8%AA/id1448360083?l=ar";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),


              myLinksRowItem(
                "تطبيق نافيتال للايفون",
                    () async {
                  final url = "https://apps.apple.com/us/app/navitel-navigator/id560079717";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),




            ],
          ),
        ),
      ),
    );
  }
}
