import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/prayer-time/addCity_screen.dart';
import 'package:new_moon_app/prayer-time/adhan.dart';
import 'package:new_moon_app/prayer-time/loading_screen.dart';
import 'package:new_moon_app/screens/bnb_screens/home_screen.dart';
import 'package:new_moon_app/screens/bnb_screens/prayer_screen.dart';
import 'package:new_moon_app/screens/bnb_screens/temperature_screen.dart';
import 'package:new_moon_app/weather/screens/loading_screen.dart';

import '../components/global_componnets.dart';

import '../flutter_qibla/qibla_main.dart';
import '../screens/bnb_screens/qibla_screen.dart';
import 'global_states.dart';

class GlobalCubit extends Cubit<GlobalStates> {
  GlobalCubit() : super(MoonInitialState());

  static GlobalCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  //kDarkPlaceholderText

  List<Widget> screens = [
    HomeScreen(),
    qibla_main(),
    LoadingScreen(),
    TimesPage(),
  ];
  //cloudy
  List<Widget> bottomItems = [
    Padding(
      padding: const EdgeInsets.only(right: 2.5, bottom: 2),
      child: svgImage("home", color: primaryColor, size: 25),
    ),
    Image.asset(
      "assets/icons/qibla.png",
    ),
    Image.asset(
      "assets/icons/cloudy.png",
    ),
    Image.asset(
      "assets/icons/prayer.png",
    ),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }

  // void getHomeData() {
  //   emit(LoadingHomeState());
  //   print('hello word');

  //   DioHelper.getData(
  //     url: HOME,
  //   ).then((value) {
  //     print('hello word');

  //     print(value.data.toString());

  //     emit(SucessHomeState());
  //   }).catchError((error) {
  //     emit(ErrorHomeState());
  //     print(error.toString());
  //   });
  // }
}
