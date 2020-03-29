import 'package:fl_chart/fl_chart.dart';
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
              Container(
                height: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    PieChart(
                      PieChartData(
                        centerSpaceRadius: 30,
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        sections: [
                          PieChartSectionData(
                            color: Colors.green,
                            value: successState.countryData.countryData.first
                                    .totalRecovered *
                                100 /
                                successState
                                    .countryData.countryData.first.totalCases,
                            showTitle: false,
                            radius: 60,
                          ),
                          PieChartSectionData(
                            color: Colors.blue,
                            value: successState.countryData.countryData.first
                                    .totalActiveCases *
                                100 /
                                successState
                                    .countryData.countryData.first.totalCases,
                            showTitle: false,
                            radius: 60,
                          ),
                          PieChartSectionData(
                            color: Colors.red,
                            value: successState
                                    .countryData.countryData.first.totalDeaths *
                                100 /
                                successState
                                    .countryData.countryData.first.totalCases,
                            showTitle: false,
                            radius: 60,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Active Cases'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Total Resolved Cases'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Total Deaths'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
