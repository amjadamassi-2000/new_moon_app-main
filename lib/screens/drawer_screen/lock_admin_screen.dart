import 'package:flutter/material.dart';
import 'package:new_moon_app/components/global_componnets.dart';

import 'admin_screen.dart';

class LockAdminScreen extends StatefulWidget {
  @override
  _LockAdminScreenState createState() => _LockAdminScreenState();
}

class _LockAdminScreenState extends State<LockAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xFF0e164a),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 130,
                ),
                Image.asset(
                  "assets/icons/splash_icon.png",
                  width: 130,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "يرجى إدخال كلمة المرور",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 100,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "كلمة المرور",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        fontFamily: 'cairo',
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300.withOpacity(0.3),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    To(context, AdminScreen());
                  },
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
                        fontSize: 18,
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
