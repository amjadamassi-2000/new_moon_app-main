import 'dart:async';
import 'package:flutter/material.dart';
import 'bnb_screens/home_screen.dart';
import 'bnb_screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();


    Timer(
        Duration(seconds: 3),
            (){

          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => MainScreen()));





            }
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/images/splash.jpg",
              fit: BoxFit.fill,
            ),

          ),

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.05),
          ),

          Center(child: Image.asset("assets/icons/splash_icon.png" , width: 170,)),




        ],
      ),
    );
  }
}

