import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../components/const.dart';
import 'screen/mainpage.dart';
import 'dart:math';

class MyAppcurrency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: Scaffold(
        backgroundColor: test2,
        appBar: AppBar(
          backgroundColor: test2,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "التحويلات المالية ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "almarai",
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: MainPage(),
      ),
    );
  }
}

class Data extends ChangeNotifier {
  String initialCur = 'AUD';
  String finalCur = 'USD';
  String updatedRate;
  String inputAmount;
  String outputAmount;
  String initialCurDisplay;
  String finalCurDisplay;

  void changeInitial(String newInitial) {
    initialCur = newInitial;
    notifyListeners();
  }

  void changeFinal(String newFinal) {
    finalCur = newFinal;
    notifyListeners();
  }

  void changeRate(String newRate) {
    updatedRate = newRate;
    notifyListeners();
  }

  void enterAmount(String newInput) {
    inputAmount = newInput;
    notifyListeners();
  }

  void updateInitialCurDisplay(String newInput) {
    initialCurDisplay = newInput;
  }

  void updateFinalCurDisplay(String newInput) {
    finalCurDisplay = newInput;
  }

  void calcConvertedAmount(String rate) {
    outputAmount = (double.parse(inputAmount) * double.parse(updatedRate))
        .toStringAsFixed(2);
    notifyListeners();
  }
}
