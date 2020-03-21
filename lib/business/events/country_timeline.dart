import 'package:flutter/foundation.dart';
import 'package:ncovidtracker/utils/enums.dart';

abstract class CountryTimelineEvent {
  const CountryTimelineEvent();
}

class GetCountryTimelineEvent extends CountryTimelineEvent {
  final CountryCode countryCode;

  const GetCountryTimelineEvent({
    @required this.countryCode,
  });
}
