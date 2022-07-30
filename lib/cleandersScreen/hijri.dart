import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class hijri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfHijriDateRangePicker(),
    );
  }
}
