import 'dart:convert';

import 'package:http/http.dart' as http;

const urlbase = "https://rest.coinapi.io/v1/exchangerate/BTC/USD";
const kAPIkey = ' 91CF48AD-7287-43FD-90F0-2C3FC428BCE6';

class Network {
  Future getData(String baseCurrency, String convertTo) async {
    http.Response response = await http.get(
        'https://rest.coinapi.io/v1/exchangerate/$baseCurrency/$convertTo?apikey=$kAPIkey');
    print(response.body);
    var data = jsonDecode(response.body);
    return data;
  }
}
