import 'package:flutter/material.dart';
import 'package:new_moon_app/items/clock/widgets/clock.dart';
import 'package:new_moon_app/items/clock/widgets/digital_clock.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [AnalogClock(), DigitalClock(), Divider()]));
  }
}
