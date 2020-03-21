import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/events/country_timeline.dart';
import 'package:ncovidtracker/business/repositories/the_virus_tracker_api_repository.dart';
import 'package:ncovidtracker/business/states/coutry_timeline.dart';
import 'package:ncovidtracker/utils/constants.dart';
import 'package:ncovidtracker/utils/enums.dart';

class CountryTimelineBloc
    extends Bloc<CountryTimelineEvent, CountryTimelineState> {
  final TheVirusTrackerApiRepository _theVirusTrackerApiRepository =
      TheVirusTrackerApiRepository();
  CountryCode _countryCode = CountryCode.IN;

  @override
  CountryTimelineState get initialState => CountryTimelineInitialState();

  @override
  Stream<CountryTimelineState> mapEventToState(
      CountryTimelineEvent event) async* {
    if (event is GetCountryTimelineEvent) {
      _countryCode = event.countryCode;
      yield CountryTimelineLoadingState(
        loadingMessage: "Loading ${countryCodeMap[_countryCode]}'s Data",
      );
      try {
        final countryTimelineResponse =
            await _theVirusTrackerApiRepository.getCountryTimeline(
          countryCode: _countryCode,
        );
        if (countryTimelineResponse.statusCode == 200) {
          yield CountryTimelineSuccessState(
            countryTimeline:
                jsonDecode(countryTimelineResponse.body)['timelineitems'],
            countryCode: _countryCode,
          );
        } else {
          yield CountryTimelineErrorState(
            errorMessage: countryTimelineResponse.body.toString(),
          );
        }
      } catch (e) {
        yield CountryTimelineErrorState(
          errorMessage: e.toString(),
        );
      }
    }
  }
}
