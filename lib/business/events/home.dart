import 'package:flutter/cupertino.dart';
import 'package:ncovidtracker/utils/enums.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class GetCountryDataEvent extends HomeEvent {
  final CountryCode countryCode;

  const GetCountryDataEvent({
    @required this.countryCode,
  });
}
