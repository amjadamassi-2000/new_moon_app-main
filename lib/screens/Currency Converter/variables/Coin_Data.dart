import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'SAR',
  'CNY',
  'EUR',
  'GBP',
  'RUB',
  'JPY',
  'NZD',
  'SGD',
  'USD'
];

const apiKey = '8a4e0750-500e-11ec-8442-c71cc1ae2ac5';
const coinAPIURL = "https://freecurrencyapi.net/api/v2/latest?";
var url = coinAPIURL + 'apikey=' + apiKey + '&base_currency=';

class CoinData {
  String baseCurrency;
  String finalCurrency;
  CoinData({this.baseCurrency, this.finalCurrency});

  Future getCoinData() async {
    var uri = Uri.parse(url + baseCurrency);
    http.Response response = await http.get(uri);
    //https://freecurrencyapi.net/api/v2/latest?apikey=8a4e0750-500e-11ec-8442-c71cc1ae2ac5&base_currency=AUD

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body)['data']['$finalCurrency'];

      return decodedData;
    } else {
      print(response.statusCode);
      throw 'problem with get request';
    }
  }
}
