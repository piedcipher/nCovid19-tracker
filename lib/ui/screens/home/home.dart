import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/blocs/country_data.dart';
import 'package:ncovidtracker/business/blocs/country_timeline.dart';
import 'package:ncovidtracker/business/blocs/global_data.dart';
import 'package:ncovidtracker/business/events/country_data.dart';
import 'package:ncovidtracker/business/events/country_timeline.dart';
import 'package:ncovidtracker/business/events/global_data.dart';
import 'package:ncovidtracker/business/states/country_data.dart';
import 'package:ncovidtracker/business/states/coutry_timeline.dart';
import 'package:ncovidtracker/business/states/global_data.dart';
import 'package:ncovidtracker/ui/screens/home/widgets/country_data_tab.dart';
import 'package:ncovidtracker/ui/screens/home/widgets/country_timeline_tab.dart';
import 'package:ncovidtracker/ui/screens/home/widgets/global_data_tab.dart';
import 'package:ncovidtracker/ui/widgets/error.dart';
import 'package:ncovidtracker/ui/widgets/loading.dart';
import 'package:ncovidtracker/utils/enums.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentBottomBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('nCovid19 Tracker'),
          bottom: TabBar(
            controller: DefaultTabController.of(context),
            tabs: <Widget>[
              Tab(
                child: Text('Global'),
              ),
              Tab(
                child: Text('Local'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: DefaultTabController.of(context),
          children: <Widget>[
            BlocBuilder<GlobalDataBloc, GlobalDataState>(
              builder: (context, state) {
                if (state is GlobalDataInitialState) {
                  return Container();
                } else if (state is GlobalDataLoadingState) {
                  return LoadingWidget(
                    loadingMessage: state.loadingMessage,
                  );
                } else if (state is GlobalDataSuccessState) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      BlocProvider.of<GlobalDataBloc>(context).add(
                        GetGlobalDataEvent(),
                      );
                    },
                    child: GlobalDataTab(
                      successState: state,
                    ),
                  );
                } else if (state is GlobalDataErrorState) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      BlocProvider.of<GlobalDataBloc>(context).add(
                        GetGlobalDataEvent(),
                      );
                    },
                    child: ErrorsWidget(
                      errorMessage: state.errorMessage,
                    ),
                  );
                }
                return Container();
              },
            ),
            Scaffold(
              body: [
                BlocBuilder<CountryDataBloc, CountryDataState>(
                  builder: (context, state) {
                    if (state is CountryDataInitialState) {
                      return Container();
                    } else if (state is CountryDataLoadingState) {
                      return LoadingWidget(
                        loadingMessage: state.loadingMessage,
                      );
                    } else if (state is CountryDataSuccessState) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          BlocProvider.of<CountryDataBloc>(context).add(
                            GetCountryDataEvent(countryCode: state.countryCode),
                          );
                        },
                        child: CountryDataTab(
                          successState: state,
                        ),
                      );
                    } else if (state is CountryDataErrorState) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          BlocProvider.of<CountryDataBloc>(context).add(
                            GetCountryDataEvent(countryCode: CountryCode.IN),
                          );
                        },
                        child: ErrorsWidget(
                          errorMessage: state.errorMessage,
                        ),
                      );
                    }
                    return Container();
                  },
                ),
                BlocBuilder<CountryTimelineBloc, CountryTimelineState>(
                  builder: (context, state) {
                    if (state is CountryTimelineInitialState) {
                      return Container();
                    } else if (state is CountryTimelineLoadingState) {
                      return LoadingWidget(
                        loadingMessage: state.loadingMessage,
                      );
                    } else if (state is CountryTimelineSuccessState) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          BlocProvider.of<CountryTimelineBloc>(context).add(
                            GetCountryTimelineEvent(
                                countryCode: state.countryCode),
                          );
                        },
                        child: CountryTimelineTab(
                          successState: state,
                        ),
                      );
                    } else if (state is CountryTimelineErrorState) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          BlocProvider.of<CountryTimelineBloc>(context).add(
                            GetCountryTimelineEvent(
                                countryCode: CountryCode.IN),
                          );
                        },
                        child: ErrorsWidget(
                          errorMessage: state.errorMessage,
                        ),
                      );
                    }
                    return Container();
                  },
                )
              ][_currentBottomBarIndex],
              bottomNavigationBar: BottomNavigationBar(
                onTap: (_newCurrentBottomBarIndex) => setState(
                  () => _currentBottomBarIndex = _newCurrentBottomBarIndex,
                ),
                items: [
                  BottomNavigationBarItem(
                    title: Text('Data'),
                    icon: Icon(Icons.data_usage),
                  ),
                  BottomNavigationBarItem(
                    title: Text('Timeline'),
                    icon: Icon(Icons.timeline),
                  ),
                ],
                currentIndex: _currentBottomBarIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
