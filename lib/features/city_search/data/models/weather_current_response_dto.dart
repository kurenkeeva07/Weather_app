import 'package:equatable/equatable.dart';
import 'package:weather_app/features/city_search/data/models/weather_condition_response_dto.dart';

class WeatherCurrentResponseDto extends Equatable{
  final String? lastUpdated;
  final double? tempC;
  final int? isDay;
  final WeatherConditionDto? condition;
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

  const WeatherCurrentResponseDto({
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

  factory WeatherCurrentResponseDto.fromJson(Map<String, dynamic> json){
    return WeatherCurrentResponseDto(
        lastUpdated: json['last_updated'],
        tempC: json['temp_c'],
        isDay: json['is_day'],
        condition: WeatherConditionDto.fromJson(json['condition']),
        windKph: json['wind_kph'],
        windDegree: json['wind_degree'],
        pressureMb: json['pressure_mb'],
        preCipMm: json['precip_mm'],
        humidity: json['humidity'],
        cloud: json['cloud'],
        feelsLikeC: json['feelslike_c'],
        windchillC: json['windchill_c'],
        heatIndexC: json['heatindex_c'],
        dewPointC: json['dewpoint_c'],
        visKm: json['vis_km'],
        uv: json['uv'],
        gustKph: json['gust_kph']
    );
  }

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