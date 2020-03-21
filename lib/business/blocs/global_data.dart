import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/events/global_data.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';
import 'package:ncovidtracker/business/repositories/the_virus_tracker_api_repository.dart';
import 'package:ncovidtracker/business/states/global_data.dart';

class GlobalDataBloc extends Bloc<GlobalDataEvent, GlobalDataState> {
  final TheVirusTrackerApiRepository _theVirusTrackerApiRepository =
      TheVirusTrackerApiRepository();

  @override
  GlobalDataState get initialState => GlobalDataInitialState();

  @override
  Stream<GlobalDataState> mapEventToState(GlobalDataEvent event) async* {
    if (event is GetGlobalDataEvent) {
      yield GlobalDataLoadingState(
        loadingMessage: "Loading Worlds's Data",
      );
      try {
        final globalDataResponse =
            await _theVirusTrackerApiRepository.getGlobalData();
        if (globalDataResponse.statusCode == 200) {
          yield GlobalDataSuccessState(
            globalData: Global.fromJson(globalDataResponse.body),
          );
        } else {
          yield GlobalDataErrorState(
            errorMessage: globalDataResponse.body.toString(),
          );
        }
      } catch (e) {
        yield GlobalDataErrorState(
          errorMessage: e.toString(),
        );
      }
    }
  }
}
