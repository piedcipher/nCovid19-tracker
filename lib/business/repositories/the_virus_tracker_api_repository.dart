import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:ncovidtracker/utils/enums.dart';

class TheVirusTrackerApiRepository {
  static const String baseUrl = 'https://thevirustracker.com/free-api';

  Future<http.Response> getCountryData({
    @required CountryCode countryCode,
  }) async =>
      await http.get(
        '$baseUrl?countryTotal=${countryCode.toString().split('.').last}',
      );

  Future<http.Response> getGlobalData() async => await http.get(
        '$baseUrl?global=stats',
      );

  Future<http.Response> getCountryTimeline({
    @required CountryCode countryCode,
  }) async =>
      await http.get(
          '$baseUrl?countryTimeline=${countryCode.toString().split('.').last}');
}
