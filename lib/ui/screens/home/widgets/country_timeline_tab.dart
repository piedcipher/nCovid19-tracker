import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/blocs/country_timeline.dart';
import 'package:ncovidtracker/business/events/country_timeline.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';
import 'package:ncovidtracker/business/models/serializers.dart';
import 'package:ncovidtracker/business/states/coutry_timeline.dart';
import 'package:ncovidtracker/utils/constants.dart';

class CountryTimelineTab extends StatefulWidget {
  final CountryTimelineSuccessState successState;

  CountryTimelineTab({
    @required this.successState,
  });

  @override
  _CountryTimelineTabState createState() => _CountryTimelineTabState();
}

class _CountryTimelineTabState extends State<CountryTimelineTab> {
  final List<String> _dateKeys = [];

  @override
  void initState() {
    super.initState();
    _dateKeys.addAll(widget.successState.countryTimeline.first.keys.toList());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              child: DropdownButton(
                underline: Container(),
                onChanged: (_newCountryCode) {
                  BlocProvider.of<CountryTimelineBloc>(context).add(
                    GetCountryTimelineEvent(countryCode: _newCountryCode),
                  );
                },
                value: widget.successState.countryCode,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              final countryTimelineItem = serializers.deserializeWith(
                  CountryTimelineItem.serializer,
                  widget.successState.countryTimeline.first[_dateKeys[index]]);

              return ExpansionTile(
                title: Text(_dateKeys[index]),
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () {},
                        title: Text('New Daily Cases'),
                        subtitle:
                            Text(countryTimelineItem.newDailyCases.toString()),
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text('New Daily Deaths'),
                        subtitle:
                            Text(countryTimelineItem.newDailyDeaths.toString()),
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text('Total Cases'),
                        subtitle:
                            Text(countryTimelineItem.totalCases.toString()),
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text('Total Recoveries'),
                        subtitle: Text(
                            countryTimelineItem.totalRecoveries.toString()),
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text('Total Deaths'),
                        subtitle:
                            Text(countryTimelineItem.totalDeaths.toString()),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount:
                widget.successState.countryTimeline.first.keys.length - 1,
          ),
        ),
      ],
    );
  }
}
