import 'package:flutter/foundation.dart';
import 'package:ncovidtracker/utils/enums.dart';

abstract class CountryDataEvent {
  const CountryDataEvent();
}

class GetCountryDataEvent extends CountryDataEvent {
  final CountryCode countryCode;

  const GetCountryDataEvent({
    @required this.countryCode,
  });
}
