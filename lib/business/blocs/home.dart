import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/events/home.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';
import 'package:ncovidtracker/business/repositories/ncovid_repository.dart';
import 'package:ncovidtracker/business/states/home.dart';
import 'package:ncovidtracker/utils/constants.dart';
import 'package:ncovidtracker/utils/enums.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NCovidRepository _nCovidRepository = NCovidRepository();
  CountryCode _countryCode = CountryCode.IN;

  @override
  HomeState get initialState => InitialState();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetCountryDataEvent) {
      _countryCode = event.countryCode;
      yield LoadingState(
        loadingMessage: 'Loading ${countryCodeMap[_countryCode]}\'s Data',
      );
      try {
        final response = await _nCovidRepository.getCountryStats(
          countryCode: _countryCode,
        );
        yield DataState(
          nCovidData: NCovidData.fromJson(response.body),
          newsItems: jsonDecode(response.body)['countrynewsitems'],
          countryCode: _countryCode,
        );
      } catch (e) {
        yield ErrorState(
          errorMessage: e.toString(),
        );
      }
    }
  }
}
