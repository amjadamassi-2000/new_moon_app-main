import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:new_moon_app/prayer-time/adhan.dart';
import 'package:new_moon_app/prayer-time/services/prayer.dart';
import 'package:new_moon_app/prayer-time/utils/constants.dart';

class LoadingScreen2 extends StatefulWidget {
  final String cityName;

  LoadingScreen2({this.cityName});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen2> {
  @override
  void initState() {
    super.initState();
    getLocationData(widget.cityName);
  }

  void getLocationData(String cityName) async {
    PrayerModel prayerModel = PrayerModel();
    var timesData = await prayerModel.getCityPrayers(cityName);
    print(timesData);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TimesPage(timesData: timesData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [color1, color2])),
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 80.0,
          ),
        ),
      ),
    );
  }
}
