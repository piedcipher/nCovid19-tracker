import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/events/country_data.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';
import 'package:ncovidtracker/business/repositories/the_virus_tracker_api_repository.dart';
import 'package:ncovidtracker/business/states/country_data.dart';
import 'package:ncovidtracker/utils/constants.dart';
import 'package:ncovidtracker/utils/enums.dart';

class CountryDataBloc extends Bloc<CountryDataEvent, CountryDataState> {
  final TheVirusTrackerApiRepository _theVirusTrackerApiRepository =
      TheVirusTrackerApiRepository();
  CountryCode _countryCode = CountryCode.IN;

  @override
  CountryDataState get initialState => CountryDataInitialState();

  @override
  Stream<CountryDataState> mapEventToState(CountryDataEvent event) async* {
    if (event is GetCountryDataEvent) {
      _countryCode = event.countryCode;
      yield CountryDataLoadingState(
        loadingMessage: "Loading ${countryCodeMap[_countryCode]}'s Data",
      );
      try {
        final countryDataResponse =
            await _theVirusTrackerApiRepository.getCountryData(
          countryCode: _countryCode,
        );
        if (countryDataResponse.statusCode == 200) {
          yield CountryDataSuccessState(
            countryData: Country.fromJson(countryDataResponse.body),
            countryCode: _countryCode,
          );
        } else {
          yield CountryDataErrorState(
            errorMessage: countryDataResponse.body.toString(),
          );
        }
      } catch (e) {
        yield CountryDataErrorState(
          errorMessage: e.toString(),
        );
      }
    }
  }
}
