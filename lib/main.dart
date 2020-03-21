import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/blocs/country_data.dart';
import 'package:ncovidtracker/business/blocs/country_timeline.dart';
import 'package:ncovidtracker/business/blocs/global_data.dart';
import 'package:ncovidtracker/business/events/country_data.dart';
import 'package:ncovidtracker/business/events/country_timeline.dart';
import 'package:ncovidtracker/business/events/global_data.dart';
import 'package:ncovidtracker/ui/screens/home/home.dart';
import 'package:ncovidtracker/utils/enums.dart';

void main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<CountryDataBloc>(
          create: (context) => CountryDataBloc()
            ..add(
              GetCountryDataEvent(
                countryCode: CountryCode.IN,
              ),
            ),
        ),
        BlocProvider<GlobalDataBloc>(
          create: (context) => GlobalDataBloc()
            ..add(
              GetGlobalDataEvent(),
            ),
        ),
        BlocProvider<CountryTimelineBloc>(
          create: (context) => CountryTimelineBloc()
            ..add(
              GetCountryTimelineEvent(
                countryCode: CountryCode.IN,
              ),
            ),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nCovid19 Tracker',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        '/': (context) => kIsWeb || Platform.isAndroid
            ? HomeScreen()
            : Scaffold(
                body: Center(
                  child: Text('This platform is not supported.'),
                ),
              ),
      },
      initialRoute: '/',
    );
  }
}
