import 'package:flutter/cupertino.dart';
import 'package:ncovidtracker/utils/enums.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class GetDataEvent extends HomeEvent {
  final CountryCode countryCode;

  const GetDataEvent({
    @required this.countryCode,
  });
}
