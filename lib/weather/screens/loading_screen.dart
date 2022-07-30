import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:new_moon_app/cubit/global_cubit.dart';
import 'package:new_moon_app/weather/screens/location_screen.dart';
import 'package:new_moon_app/weather/services/location_info.dart';
import 'package:new_moon_app/weather/services/weather.dart';
import 'package:open_settings/open_settings.dart';

import '../utilities/constants.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) {
            var cubit = GlobalCubit.get(context);

            return new AlertDialog(
              title: new Text('هل انت متأكد'),
              content: new Text('هل تريد الرجوع للشاشة السابقة'),
              actions: <Widget>[
                new FlatButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: new Text('لا'),
                ),
                new FlatButton(
                  onPressed: () {
                    cubit.currentIndex = 0;
                  },
                  child: new Text('نعم'),
                ),
              ],
            );
          },
        )) ??
        false;
  }

  void getUserLocationData() async {
    //Checking Internet Connection
    if (await kInternetConnectivityChecker() == true) {
      // getting user location
      if (!await LocationInfo().getUserLocationAndGPS()) {
        Navigator.pushReplacementNamed(context, '/CityScreen');
      } else {
        LocationInfo locationInfo = new LocationInfo();
        await locationInfo.getUserLocationData();
        //getting weather data on basis of location
        Weather weather = new Weather();
        dynamic weatherData = await weather.getLocationWeatherCurrentData(
            longitude: locationInfo.longitude, latitude: locationInfo.latitude);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LocationScreen(
                weatherData: weatherData,
              );
            },
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title: new Text(' لا يوجد انترنت '),
          content: new Text('تحتاج إلى انترنت للإستمرار'),
          actions: <Widget>[
            new FlatButton(
              onPressed: () =>
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
              child: new Text('إلغاء'),
            ),
            new FlatButton(
              onPressed: () async {
                if (await kInternetConnectivityChecker() == false) {
                  OpenSettings.openWIFISetting();
                }
                Navigator.pop(context);
                getUserLocationData();
              },
              child: new Text('تم'),
            ),
          ],
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    getUserLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 70.0,
        ),
      ),
    );
  }
}
