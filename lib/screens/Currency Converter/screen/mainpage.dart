import 'package:flutter/material.dart';
import 'package:new_moon_app/screens/Currency%20Converter/components/ConvertedCurrency.dart';

import '../components/ConversionList.dart';
import '../components/ExchangeRate.dart';
import '../components/ReusableCard.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                'Currency Converter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            ReusableCard(cardChild: ConvertedCurrency()),
            SizedBox(
              height: 15,
            ),
            ReusableCard(cardChild: ExchangeRate()),
            SizedBox(
              height: 15,
            ),
            ReusableCard(cardChild: ConversionList()),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
