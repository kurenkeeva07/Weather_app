import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/city_search/domain/models/weather_current_data.dart';
import 'package:weather_app/features/city_search/presentation/models/weather_condition_state.dart';
import 'package:weather_app/features/city_search/presentation/models/weather_current_model.dart';

import '../bloc/city_search_bloc.dart';

class CitySearchPage extends StatelessWidget {
  const CitySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _Body(),
      ),
      floatingActionButton: _SearchButton(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
        builder: (context, state) {
      if (state.isLoading) {
        return const CircularProgressIndicator();
      }

      return Stack(
          children: [
          SizedBox(
          height: double.infinity,
          width: double.infinity,
          ),
          Padding(
          padding: EdgeInsets.all(16.0),
          child: _SearchTextField(),
          ),
          _SearchText(),
          SizedBox(height: 40),
          _HumidityWidget(),
          ],
          );
        },
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();

    return FloatingActionButton(
      onPressed: () => bloc.add(CitySearchDataFetched()),
      child: Icon(Icons.search_rounded),
    );
  }
}

class _SearchTextField extends StatelessWidget {
  const _SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: bloc.searchController,
        decoration: InputDecoration(
          labelText: 'search',
        ),
      ),
    );
  }
}

class _SearchText extends StatelessWidget {
  const _SearchText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return Text(
          state.data?.toString() ?? '',
          style: TextStyle(fontSize: 20),
        );
      },
    );
  }
}

class _HumidityWidget extends StatelessWidget {
  const _HumidityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
        builder: (context, state) {
          return _WeatherWidget(
            text: state.data?.current?.humidity.toString() ?? 'N/A',
            iconData: Icons.wb_twilight_rounded,
          );
        });
  }
}

class _WeatherWidget extends StatelessWidget {
  const _WeatherWidget({super.key, required this.text, required this.iconData});

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      child: Container(
          height: 100,
          width: 100,
          constraints: BoxConstraints(maxWidth: 100),
          margin: EdgeInsets.all(32),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(iconData),
              Text(
                text,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Icon(iconData, size: 44),
            ],
          )),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    _getWeatherIcon(WeatherConditionState.sunny),
    SizedBox(height: 20),
    Text(
    'Weather in Kyrgyzstan',
    style: Theme.of(context).textTheme.headlineMedium,
    ),
    SizedBox(height: 10),
    Text(
    '22°C', // Simulated temperature
    style: Theme.of(context).textTheme.headlineMedium,
    ),
    SizedBox(height: 10),
    Text(
    'Local Time: 15:30', // Simulated local time
    style: Theme.of(context).textTheme.bodyMedium,
    ),
    SizedBox(height: 10),
    Text(
    'Location: Bishkek', // Simulated location
    style: Theme.of(context).textTheme.bodyMedium,
    ),
    ],
    ),
    ),
    );
  }
}

Widget _getWeatherIcon(WeatherConditionState condition) {
  switch (condition) {
    case WeatherConditionState.sunny:
      return Icon(Icons.wb_sunny, size: 100, color: Colors.yellow);
    case WeatherConditionState.cloudy:
      return Icon(Icons.cloud, size: 100, color: Colors.grey);
    case WeatherConditionState.rain:
      return Icon(Icons.beach_access, size: 100, color: Colors.blue);
    case WeatherConditionState.snow:
      return Icon(Icons.ac_unit, size: 100, color: Colors.lightBlue);
    default:
      return Icon(Icons.error, size: 100, color: Colors.red);
  }
}


