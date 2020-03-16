import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncovidtracker/business/blocs/home.dart';
import 'package:ncovidtracker/business/events/home.dart';
import 'package:ncovidtracker/ui/screens/home/home.dart';
import 'package:ncovidtracker/utils/enums.dart';

void main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc()
            ..add(
              GetDataEvent(
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
        '/': (context) => HomeScreen(),
      },
      initialRoute: '/',
    );
  }
}
