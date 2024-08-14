import 'package:equatable/equatable.dart';
import 'package:weather_app/features/city_search/domain/models/weather_condition_data.dart';

class WeatherCurrentData extends Equatable {

  final String? lastUpdated;
  final double? tempC;
  final int? isDay;
  final WeatherConditionData? condition;
  final double? windKph;
  final double? windDegree;
  final double? pressureMb;
  final double? preCipMm;
  final int? humidity;
  final int? cloud;
  final double? feelsLikeC;
  final double? windchillC;
  final double? heatIndexC;
  final double? dewPointC;
  final double? visKm;
  final double? uv;
  final double? gustKph;

  WeatherCurrentData({
    required this.lastUpdated,
    required this.tempC,
    required this.isDay,
    required this.condition,
    required this.windKph,
    required this.windDegree,
    required this.pressureMb,
    required this.preCipMm,
    required this.humidity,
    required this.cloud,
    required this.feelsLikeC,
    required this.windchillC,
    required this.heatIndexC,
    required this.dewPointC,
    required this.visKm,
    required this.uv,
    required this.gustKph
  }
  );

  @override
  List<Object?> get props => [
    lastUpdated,
    tempC,
    isDay,
    condition,
    windKph,
    windDegree,
    pressureMb,
    preCipMm,
    humidity,
    cloud,
    feelsLikeC,
    windchillC,
    heatIndexC,
    dewPointC,
    visKm,
    uv,
    gustKph
  ];
}
