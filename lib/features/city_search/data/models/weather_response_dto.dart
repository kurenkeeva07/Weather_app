import 'package:weather_app/features/city_search/data/models/weather_current_response_dto.dart';
import 'package:weather_app/features/city_search/data/models/weather_location_response_dto.dart';

class WeatherResponseDto{

  final WeatherLocationResponseDto? location;
  final WeatherCurrentResponseDto? current;

  WeatherResponseDto({
    required this.location,
    required this.current
  });

  factory WeatherResponseDto.fromJson(Map<String,  dynamic> json) {
    return WeatherResponseDto(
        location: json['location'],
        current: json['current']);
  }

  @override
  String toString() {
    return 'WeatherCurrentResponseDto{ location: $location, current: $current';
  }
}
