import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/di/main_module.dart';
import 'package:weather_app/features/city_search/presentation/bloc/city_search_bloc.dart';
import 'package:weather_app/features/di/city_search_module.dart';

import 'features/city_search/presentation/screen/city_search_page.dart';

void main() {
  initCitySearchModule();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => getIt<CitySearchBloc>(),
        child: CitySearchPage(),
      ),
    );
  }
}

