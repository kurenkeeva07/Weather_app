import '../../data/repository/city_search_repository_impl.dart';
import '../models/weather_data.dart';
import 'city_search-repository.dart';

class CitySearchInteractor {

  final CitySearchRepository _repository = CitySearchRepositoryImpl();

  Future<WeatherData?> fetchCurrentWeatherData({required String? query}) async {
    return _repository.fetchCurrentWeatherData(query: query);
  }
}