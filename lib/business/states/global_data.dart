import 'package:flutter/cupertino.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';

abstract class GlobalDataState {
  const GlobalDataState();
}

class GlobalDataInitialState extends GlobalDataState {
  const GlobalDataInitialState();
}

class GlobalDataLoadingState extends GlobalDataState {
  final String loadingMessage;

  const GlobalDataLoadingState({
    @required this.loadingMessage,
  });
}

class GlobalDataSuccessState extends GlobalDataState {
  final Global globalData;

  const GlobalDataSuccessState({
    @required this.globalData,
  });
}

class GlobalDataErrorState extends GlobalDataState {
  final String errorMessage;

  const GlobalDataErrorState({
    @required this.errorMessage,
  });
}
