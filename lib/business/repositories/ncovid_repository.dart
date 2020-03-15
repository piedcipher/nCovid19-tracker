import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:ncovidtracker/utils/enums.dart';

class NCovidRepository {
  Future<http.Response> getCountryStats({
    @required CountryCode countryCode,
  }) async =>
      await http.get(
        'https://thevirustracker.com/free-api?countryTotal=${countryCode.toString().split('.').last}',
      );
}
