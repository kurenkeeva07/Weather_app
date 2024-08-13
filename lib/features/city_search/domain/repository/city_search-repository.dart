import 'package:weather_app/features/city_search/data/models/weather_response_dto.dart';

import '../models/weather_data.dart';

abstract class CitySearchRepository{
  Future<WeatherData?> fetchCurrentWeatherData({required String query}) async {


  }
}