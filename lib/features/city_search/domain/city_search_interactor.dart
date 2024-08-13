import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'package:weather_app/features/city_search/domain/repository/city_search-repository.dart';
import 'models/weather_data.dart';

class CitySearchInteractor{
  final CitySearchRepository _repository = CitySearchRepository();

  Future<CitySearchRepository> fetchCurrentWeatherData({required String query}) async {
    return _repository;
  }
}