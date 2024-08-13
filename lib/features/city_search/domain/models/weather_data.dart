import 'package:weather_app/features/city_search/domain/models/weather_current_data.dart';
import 'package:weather_app/features/city_search/domain/models/weather_location_data.dart';

class WeatherData{

  final WeatherLocationData? location;
  final WeatherCurrentData? current;

  WeatherData({
    required this.location,
    required this.current});
}