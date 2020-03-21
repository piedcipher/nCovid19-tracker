import 'package:flutter/material.dart';
import 'package:ncovidtracker/business/states/global_data.dart';

class GlobalDataTab extends StatelessWidget {
  final GlobalDataSuccessState successState;

  GlobalDataTab({
    @required this.successState,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          onTap: () {},
          title: Text(
              successState.globalData.globalData.first.totalCases.toString()),
          subtitle: Text('Total Cases'),
        ),
        ListTile(
          onTap: () {},
          title: Text(successState.globalData.globalData.first.totalRecovered
              .toString()),
          subtitle: Text('Total Recovered'),
        ),
        ListTile(
          onTap: () {},
          title: Text(successState.globalData.globalData.first.totalUnresolved
              .toString()),
          subtitle: Text('Total Unresolved'),
        ),
        ListTile(
          onTap: () {},
          title: Text(
              successState.globalData.globalData.first.totalDeaths.toString()),
          subtitle: Text('Total Deaths'),
        ),
        ListTile(
          onTap: () {},
          title: Text(successState
              .globalData.globalData.first.totalNewCasesToday
              .toString()),
          subtitle: Text('Total New Cases Today'),
        ),
        ListTile(
          onTap: () {},
          title: Text(successState
              .globalData.globalData.first.totalNewDeathsToday
              .toString()),
          subtitle: Text('Total New Deaths Today'),
        ),
        ListTile(
          onTap: () {},
          title: Text(successState.globalData.globalData.first.totalActiveCases
              .toString()),
          subtitle: Text('Total Active Cases'),
        ),
        ListTile(
          onTap: () {},
          title: Text(successState.globalData.globalData.first.totalSeriousCases
              .toString()),
          subtitle: Text('Total Serious Cases'),
        ),
      ],
    );
  }
}
