import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/events/home.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';
import 'package:ncovidtracker/business/repositories/the_virus_tracker_api_repository.dart';
import 'package:ncovidtracker/business/states/home.dart';
import 'package:ncovidtracker/utils/constants.dart';
import 'package:ncovidtracker/utils/enums.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TheVirusTrackerApiRepository _theVirusTrackerApiRepository =
      TheVirusTrackerApiRepository();
  CountryCode _countryCode = CountryCode.IN;

  @override
  HomeState get initialState => InitialState();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetDataEvent) {
      _countryCode = event.countryCode;
      yield LoadingState(
        loadingMessage: 'Loading ${countryCodeMap[_countryCode]}\'s Data',
      );
      try {
        final globalDataResponse =
            await _theVirusTrackerApiRepository.getGlobalData();
        final countryDataResponse =
            await _theVirusTrackerApiRepository.getCountryData(
          countryCode: _countryCode,
        );
        if (globalDataResponse.statusCode == 200 &&
            countryDataResponse.statusCode == 200) {
          yield DataState(
            globalData: Global.fromJson(globalDataResponse.body),
            countryData: Country.fromJson(countryDataResponse.body),
            countryNewsItems:
                jsonDecode(countryDataResponse.body)['countrynewsitems'],
            countryCode: _countryCode,
          );
        } else {
          yield ErrorState(
            errorMessage: globalDataResponse.body.toString() +
                '\n' +
                countryDataResponse.body.toString(),
          );
        }
      } catch (e) {
        yield ErrorState(
          errorMessage: e.toString(),
        );
      }
    }
  }
}
