import 'package:flutter/foundation.dart';
import 'package:ncovidtracker/utils/enums.dart';

abstract class CountryTimelineState {
  const CountryTimelineState();
}

class CountryTimelineInitialState extends CountryTimelineState {
  const CountryTimelineInitialState();
}

class CountryTimelineLoadingState extends CountryTimelineState {
  final String loadingMessage;

  const CountryTimelineLoadingState({
    @required this.loadingMessage,
  });
}

class CountryTimelineSuccessState extends CountryTimelineState {
  final List<dynamic> countryTimeline;
  final CountryCode countryCode;

  const CountryTimelineSuccessState({
    @required this.countryTimeline,
    @required this.countryCode,
  });
}

class CountryTimelineErrorState extends CountryTimelineState {
  final String errorMessage;

  const CountryTimelineErrorState({
    @required this.errorMessage,
  });
}
