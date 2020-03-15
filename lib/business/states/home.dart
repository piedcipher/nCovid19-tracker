import 'package:flutter/cupertino.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';
import 'package:ncovidtracker/utils/enums.dart';

abstract class HomeState {
  const HomeState();
}

class InitialState extends HomeState {
  const InitialState();
}

class LoadingState extends HomeState {
  final String loadingMessage;

  const LoadingState({
    @required this.loadingMessage,
  });
}

class DataState extends HomeState {
  final NCovidData nCovidData;
  final List<dynamic> newsItems;
  final CountryCode countryCode;

  const DataState({
    @required this.nCovidData,
    @required this.newsItems,
    @required this.countryCode,
  });
}

class ErrorState extends HomeState {
  final String errorMessage;

  const ErrorState({
    @required this.errorMessage,
  });
}
