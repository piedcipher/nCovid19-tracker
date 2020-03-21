import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/blocs/country_data.dart';
import 'package:ncovidtracker/business/events/country_data.dart';
import 'package:ncovidtracker/business/states/country_data.dart';
import 'package:ncovidtracker/utils/constants.dart';

class CountryDataTab extends StatelessWidget {
  final CountryDataSuccessState successState;

  const CountryDataTab({
    @required this.successState,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: DropdownButton(
            underline: Container(),
            onChanged: (_newCountryCode) {
              BlocProvider.of<CountryDataBloc>(context).add(
                GetCountryDataEvent(countryCode: _newCountryCode),
              );
            },
            value: successState.countryCode,
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
        Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(
                onTap: () {},
                title: Text(successState
                    .countryData.countryData.first.totalCases
                    .toString()),
                subtitle: Text('Total Cases'),
              ),
              ListTile(
                onTap: () {},
                title: Text(successState
                    .countryData.countryData.first.totalRecovered
                    .toString()),
                subtitle: Text('Total Recovered'),
              ),
              ListTile(
                onTap: () {},
                title: Text(successState
                    .countryData.countryData.first.totalUnresolved
                    .toString()),
                subtitle: Text('Total Unresolved'),
              ),
              ListTile(
                onTap: () {},
                title: Text(successState
                    .countryData.countryData.first.totalDeaths
                    .toString()),
                subtitle: Text('Total Deaths'),
              ),
              ListTile(
                onTap: () {},
                title: Text(successState
                    .countryData.countryData.first.totalNewCasesToday
                    .toString()),
                subtitle: Text('Total New Cases Today'),
              ),
              ListTile(
                onTap: () {},
                title: Text(successState
                    .countryData.countryData.first.totalNewDeathsToday
                    .toString()),
                subtitle: Text('Total New Deaths Today'),
              ),
              ListTile(
                onTap: () {},
                title: Text(successState
                    .countryData.countryData.first.totalActiveCases
                    .toString()),
                subtitle: Text('Total Active Cases'),
              ),
              ListTile(
                onTap: () {},
                title: Text(successState
                    .countryData.countryData.first.totalSeriousCases
                    .toString()),
                subtitle: Text('Total Serious Cases'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
