import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/blocs/home.dart';
import 'package:ncovidtracker/business/events/home.dart';
import 'package:ncovidtracker/business/states/home.dart';
import 'package:ncovidtracker/ui/screens/home/widgets/country_data_tab.dart';
import 'package:ncovidtracker/ui/screens/home/widgets/country_news_tab.dart';
import 'package:ncovidtracker/ui/widgets/error.dart';
import 'package:ncovidtracker/ui/widgets/loading.dart';
import 'package:ncovidtracker/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: BlocProvider.of<HomeBloc>(context),
      builder: (context, homeState) {
        if (homeState is InitialState) {
          return Container();
        } else if (homeState is LoadingState) {
          return LoadingWidget(
            loadingMessage: homeState.loadingMessage,
          );
        } else if (homeState is DataState) {
          return DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Scaffold(
              appBar: AppBar(
                title: Text('nCovid19 Tracker'),
                actions: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 4),
                    child: DropdownButton(
                      underline: Container(),
                      onChanged: (_newCountryCode) {
                        BlocProvider.of<HomeBloc>(context).add(
                          GetCountryDataEvent(countryCode: _newCountryCode),
                        );
                      },
                      value: homeState.countryCode,
                      items: [
                        ...countryCodeMap.keys.map(
                          (countryCode) => DropdownMenuItem(
                            child: Text(countryCodeMap[countryCode]),
                            value: countryCode,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
                bottom: TabBar(
                  controller: DefaultTabController.of(context),
                  tabs: <Widget>[
                    Tab(
                      child: Text('Data'),
                    ),
                    Tab(
                      child: Text('News'),
                    )
                  ],
                ),
              ),
              body: TabBarView(
                controller: DefaultTabController.of(context),
                children: <Widget>[
                  RefreshIndicator(
                    onRefresh: () async {
                      BlocProvider.of<HomeBloc>(context).add(
                        GetCountryDataEvent(countryCode: homeState.countryCode),
                      );
                    },
                    child: CountryDataTab(
                      homeState: homeState,
                    ),
                  ),
                  RefreshIndicator(
                    onRefresh: () async {
                      BlocProvider.of<HomeBloc>(context).add(
                        GetCountryDataEvent(countryCode: homeState.countryCode),
                      );
                    },
                    child: CountryNewsTab(
                      homeState: homeState,
                    ),
                  ),
                ],
              ),
            ),
          );
        } else if (homeState is ErrorState) {
          return ErrorsWidget(
            errorMessage: homeState.errorMessage,
          );
        }
        return Container();
      },
    );
  }
}
