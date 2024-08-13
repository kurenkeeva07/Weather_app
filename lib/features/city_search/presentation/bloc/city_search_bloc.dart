import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/city_search/domain/city_search_interactor.dart';
import '../../data/models/weather_response_dto.dart';

part 'city_search_state.dart';
part 'city_search_event.dart';


class CitySearchBloc extends Bloc<CitySearchEvent, CitySearchState> {

  final searchController = TextEditingController();
  final CitySearchInteractor _citySearchInteractor = CitySearchInteractor();

  CitySearchBloc() : super(const CitySearchState()){
    on<CitySearchDataFetched>(_onCitySearchDataFetched);
  }

  void _onCitySearchDataFetched(
    CitySearchDataFetched event,
    Emitter<CitySearchState> emit,
    ) async {
    emit(state.copyWith(isLoading: true));
    final data = await _citySearchInteractor.fetchCurrentWeatherData(query: searchController.text);

    emit(state.copyWith(data: data, isLoading: false));
  }
}
