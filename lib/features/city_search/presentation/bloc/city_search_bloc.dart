import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/city_search/domain/repository/city_search_interactor.dart';
import 'package:weather_app/features/city_search/presentation/mappers/weather_model_mapper.dart';
import 'package:weather_app/features/city_search/presentation/models/weather_model.dart';


part 'city_search_state.dart';
part 'city_search_event.dart';


class CitySearchBloc extends Bloc<CitySearchEvent, CitySearchState> {

  final searchController = TextEditingController();
  final CitySearchInteractor _citySearchInteractor = CitySearchInteractor();
  final WeatherModelMapper _weatherModelMapper = WeatherModelMapper();

  CitySearchBloc() : super(const CitySearchState(isLoading: false)){
    on<CitySearchDataFetched>(_onCitySearchDataFetched);
  }

  void _onCitySearchDataFetched(
    CitySearchDataFetched event,
    Emitter<CitySearchState> emit,
    ) async {
    emit(state.copyWith(isLoading: true));
    final data = await _citySearchInteractor.fetchCurrentWeatherData(query: searchController.text);
    final model = data != null ? _weatherModelMapper.mapWeatherModel(data) : null;

    emit(state.copyWith(data: model, isLoading: false));
  }
}
