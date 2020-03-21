import 'package:flutter/foundation.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';
import 'package:ncovidtracker/utils/enums.dart';

abstract class CountryDataState {
  const CountryDataState();
}

class CountryDataInitialState extends CountryDataState {
  const CountryDataInitialState();
}

class CountryDataLoadingState extends CountryDataState {
  final String loadingMessage;

  const CountryDataLoadingState({
    @required this.loadingMessage,
  });
}

class CountryDataSuccessState extends CountryDataState {
  final Country countryData;
  final CountryCode countryCode;

  const CountryDataSuccessState({
    @required this.countryData,
    @required this.countryCode,
  });
}

class CountryDataErrorState extends CountryDataState {
  final String errorMessage;

  const CountryDataErrorState({
    @required this.errorMessage,
  });
}
