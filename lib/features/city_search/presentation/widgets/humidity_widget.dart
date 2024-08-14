import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/city_search/presentation/bloc/city_search_bloc.dart';
import 'package:weather_app/features/city_search/presentation/widgets/weather_widget.dart';

class _HumidityWidget extends StatelessWidget {
  const _HumidityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(builder: (context, state) {
      return WeatherWidget(text: state.data?.current?.humidity.toString() ?? 'N/A');
    });
  }
}
