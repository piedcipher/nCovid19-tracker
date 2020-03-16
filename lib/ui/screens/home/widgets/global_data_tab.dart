import 'package:flutter/material.dart';
import 'package:ncovidtracker/business/states/home.dart';

class GlobalDataTab extends StatelessWidget {
  final DataState homeState;

  GlobalDataTab({
    @required this.homeState,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          onTap: () {},
          title:
              Text(homeState.globalData.globalData.first.totalCases.toString()),
          subtitle: Text('Total Cases'),
        ),
        ListTile(
          onTap: () {},
          title: Text(
              homeState.globalData.globalData.first.totalRecovered.toString()),
          subtitle: Text('Total Recovered'),
        ),
        ListTile(
          onTap: () {},
          title: Text(
              homeState.globalData.globalData.first.totalUnresolved.toString()),
          subtitle: Text('Total Unresolved'),
        ),
        ListTile(
          onTap: () {},
          title: Text(
              homeState.globalData.globalData.first.totalDeaths.toString()),
          subtitle: Text('Total Deaths'),
        ),
        ListTile(
          onTap: () {},
          title: Text(homeState.globalData.globalData.first.totalNewCasesToday
              .toString()),
          subtitle: Text('Total New Cases Today'),
        ),
        ListTile(
          onTap: () {},
          title: Text(homeState.globalData.globalData.first.totalNewDeathsToday
              .toString()),
          subtitle: Text('Total New Deaths Today'),
        ),
        ListTile(
          onTap: () {},
          title: Text(homeState.globalData.globalData.first.totalActiveCases
              .toString()),
          subtitle: Text('Total Active Cases'),
        ),
        ListTile(
          onTap: () {},
          title: Text(homeState.globalData.globalData.first.totalSeriousCases
              .toString()),
          subtitle: Text('Total Serious Cases'),
        ),
      ],
    );
  }
}
