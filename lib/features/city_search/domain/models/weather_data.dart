import 'package:equatable/equatable.dart';
import 'package:weather_app/features/city_search/domain/models/weather_current_data.dart';
import 'package:weather_app/features/city_search/domain/models/weather_location_data.dart';

class WeatherData extends Equatable {

  final WeatherLocationData? location;
  final WeatherCurrentData? current;

  WeatherData({
    required this.location,
    required this.current
  });

  @override
  List<Object?> get props => [
    location,
    current,
  ];
}