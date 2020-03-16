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
  final Global globalData;
  final Country countryData;
  final List<dynamic> countryNewsItems;
  final CountryCode countryCode;

  const DataState({
    @required this.globalData,
    @required this.countryData,
    @required this.countryNewsItems,
    @required this.countryCode,
  });
}

class ErrorState extends HomeState {
  final String errorMessage;

  const ErrorState({
    @required this.errorMessage,
  });
}
