import 'package:flutter/material.dart';
import 'package:new_moon_app/screens/Currency%20Converter/home_curremcy.dart';
import 'package:provider/provider.dart';

class FromCountryCard extends StatelessWidget {
  final String image;
  final String currencyAmount;
  final String currencyName;

  FromCountryCard(
      {@required this.image,
      @required this.currencyAmount,
      @required this.currencyName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          '${(Provider.of<Data>(context).inputAmount == null) ? '0' : Provider.of<Data>(context).inputAmount} ${(Provider.of<Data>(context).initialCurDisplay == null) ? 'AUD' : Provider.of<Data>(context).initialCurDisplay}',
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
