import 'package:adhan/adhan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:new_moon_app/prayer-time/components/icon_text.dart';
import 'package:new_moon_app/prayer-time/components/waktuSalat.dart';
import 'package:new_moon_app/prayer-time/utils/constants.dart';

import '../components/const.dart';

class TimesPage extends StatefulWidget {
  final dynamic timesData;
  TimesPage({this.timesData});

  @override
  _TimesPageState createState() => _TimesPageState();
}

class _TimesPageState extends State<TimesPage> {
  String todayTime;
  String imsakTime;
  String fajrTime;
  String duhrTime;
  String asrTime;
  String maghrebTime;
  String aishaTime;
  String sunriseTime;
  String cityName;
  String countryName;
  dynamic data;

  final location = Location();
  String locationError;
  PrayerTimes prayerTimes;
  dynamic fajer = '';
  dynamic Duhur = '';
  dynamic Asr = '';
  dynamic Maghrib = '';
  dynamic Isha = '';
  dynamic time_zone = '';

  @override
  void initState() {
    getLocationData().then((locationData) {
      if (!mounted) {
        return;
      }
      if (locationData != null) {
        setState(() async {
          prayerTimes = await PrayerTimes(
              Coordinates(locationData.latitude, locationData.longitude),
              DateComponents.from(DateTime.now()),
              CalculationMethod.karachi.getParameters());
          fajer = DateFormat.jm().format(prayerTimes.fajr);
          Duhur = DateFormat.jm().format(prayerTimes.dhuhr);
          Asr = DateFormat.jm().format(prayerTimes.asr);
          Maghrib = DateFormat.jm().format(prayerTimes.maghrib);
          Isha = DateFormat.jm().format(prayerTimes.isha);

          setState(() {});
          print(fajer);
        });
      } else {
        setState(() {
          locationError = "Couldn't Get Your Location!";
        });
      }
    });
    //print('${)}');

    super.initState();
  }

  Future<LocationData> getLocationData() async {
    var _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();

      if (!_serviceEnabled) {
        return null;
      }
    }

    var _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    return await location.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat.yMMMd('ar_SA');
    print(formatter.locale);
    String formatted = formatter.format(now);
    return Scaffold(
       backgroundColor: test2,

        body: Container(
      padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
      // decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //         begin: Alignment.topRight,
      //         end: Alignment.bottomLeft,
      //         colors: [test2, item]
      //     ),
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10 , right: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
             // Icon(Icons.menu, color: Colors.white)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "مواقيت الصلاة",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              fontFamily: "almarai",

            ),
          ),
          // Text(
          //   "Prayer becomes timely",
          //   style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 15,
          //
          //   ),
          // ),
          SizedBox(
            height: 80,
          ),

          ListTile(
            contentPadding: EdgeInsets.only(right: 0),
            leading: Icon(Icons.calendar_today , color: Colors.white,size: 20,),
            title:   Text(
              formatted ?? "",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      fontFamily: "almarai",

                    ),
                  ),
            subtitle:  Text(
              "تاريخ اليوم",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 12,
                fontFamily: "almarai",

              ),
            ),
          ),






          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: ListView(
                children: <Widget>[
                  WaktuSalat(
                    name: "الفجر",
                    time: fajer ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "الظهر",
                    time: Duhur ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "العصر",
                    time: Asr ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "المغرب",
                    time: Maghrib ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "العشاء",
                    time: Isha ?? "",
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
