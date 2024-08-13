import 'package:weather_app/features/city_search/data/repository/city_search_repository_impl.dart';
import 'package:weather_app/features/city_search/domain/repository/city_search-repository.dart';

class CitySearchInteractor{
  final CitySearchRepositoryImpl _repository = CitySearchRepositoryImpl();

  Future<CitySearchRepository> fetchCurrentWeatherData({
    required query
      }) async {
    return _repository;
  }
}