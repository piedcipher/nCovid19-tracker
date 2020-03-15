import 'package:flutter/material.dart';
import 'package:ncovidtracker/business/states/home.dart';

class CountryDataTab extends StatelessWidget {
  final DataState homeState;

  const CountryDataTab({
    @required this.homeState,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          onTap: () {},
          title: Text(
              homeState.nCovidData.countryData.first.totalCases.toString()),
          subtitle: Text('Total Cases'),
        ),
        ListTile(
          onTap: () {},
          title: Text(
              homeState.nCovidData.countryData.first.totalRecovered.toString()),
          subtitle: Text('Total Recovered'),
        ),
        ListTile(
          onTap: () {},
          title: Text(homeState.nCovidData.countryData.first.totalUnresolved
              .toString()),
          subtitle: Text('Total Unresolved'),
        ),
        ListTile(
          onTap: () {},
          title: Text(
              homeState.nCovidData.countryData.first.totalDeaths.toString()),
          subtitle: Text('Total Deaths'),
        ),
        ListTile(
          onTap: () {},
          title: Text(homeState.nCovidData.countryData.first.totalNewCasesToday
              .toString()),
          subtitle: Text('Total New Cases Today'),
        ),
        ListTile(
          onTap: () {},
          title: Text(homeState.nCovidData.countryData.first.totalNewDeathsToday
              .toString()),
          subtitle: Text('Total New Deaths Today'),
        ),
        ListTile(
          onTap: () {},
          title: Text(homeState.nCovidData.countryData.first.totalActiveCases
              .toString()),
          subtitle: Text('Total Active Cases'),
        ),
        ListTile(
          onTap: () {},
          title: Text(homeState.nCovidData.countryData.first.totalSeriousCases
              .toString()),
          subtitle: Text('Total Serious Cases'),
        ),
      ],
    );
  }
}
