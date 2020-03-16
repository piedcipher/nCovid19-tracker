import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:ncovidtracker/utils/enums.dart';

class TheVirusTrackerApiRepository {
  Future<http.Response> getCountryData({
    @required CountryCode countryCode,
  }) async =>
      await http.get(
        'https://thevirustracker.com/free-api?countryTotal=${countryCode.toString().split('.').last}',
      );

  Future<http.Response> getGlobalData() async => await http.get(
        'https://thevirustracker.com/free-api?global=stats',
      );
}
