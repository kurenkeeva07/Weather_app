import 'package:equatable/equatable.dart';
import 'package:weather_app/features/city_search/domain/models/weather_condition_data.dart';

class WeatherCurrentData extends Equatable {

  final int? lastUpdatedEpoch;
  final String? lastUpdated;
  final double? tempC;
  final double? tempF;
  final int? isDay;
  final WeatherConditionData? condition;
  final double? windMph;
  final double? windKph;
  final double? windDegree;
  final String? windDir;
  final double? pressureMb;
  final double? pressureIn;
  final double? preCipMm;
  final double? preCipIn;
  final int? humidity;
  final int? cloud;
  final double? feelsLikeC;
  final double? feelsLikeF;
  final double? windchillC;
  final double? windchillF;
  final double? heatIndexC;
  final double? heatIndexF;
  final double? dewPointC;
  final double? dewPointF;
  final double? visKm;
  final double? visMiles;
  final double? uv;
  final double? gustMph;
  final double? gustKph;

  WeatherCurrentData({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.preCipMm,
    required this.preCipIn,
    required this.humidity,
    required this.cloud,
    required this.feelsLikeC,
    required this.feelsLikeF,
    required this.windchillC,
    required this.windchillF,
    required this.heatIndexC,
    required this.heatIndexF,
    required this.dewPointC,
    required this.dewPointF,
    required this.visKm,
    required this.visMiles,
    required this.uv,
    required this.gustMph,
    required this.gustKph
  }
  );

  @override
  List<Object?> get props => [
    lastUpdatedEpoch,
    lastUpdated,
    tempC,
    tempF,
    isDay,
    condition,
    windMph,
    windKph,
    windDegree,
    windDir,
    pressureMb,
    pressureIn,
    preCipMm,
    preCipIn,
    humidity,
    cloud,
    feelsLikeC,
    feelsLikeF,
    windchillC,
    windchillF,
    heatIndexC,
    heatIndexF,
    dewPointC,
    dewPointF,
    visKm,
    visMiles,
    uv,
    gustMph,
    gustKph
  ];
}
