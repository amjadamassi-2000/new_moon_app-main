import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/const.dart';




class StarsImageScreen extends StatefulWidget {

  @override
  _StarsImageScreenState createState() => _StarsImageScreenState();
}

class _StarsImageScreenState extends State<StarsImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: test2,

      appBar: AppBar(
        backgroundColor: test2,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "تمثيل النجوم",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "almarai",
          ),
        ),
      ),
      
      body: Container(
        height: double.infinity,

        child: Image.asset("assets/stars_image.jpeg" , fit: BoxFit.fitWidth),
      ),

    );
  }
}
