import 'package:weather_app/features/city_search/data/models/weather_condition_response_dto.dart';

class WeatherCurrentResponseDto {
  final int? lastUpdatedEpoch;
  final String? lastUpdated;
  final double? tempC;
  final double? tempF;
  final int? isDay;
  final WeatherConditionDto? condition;
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

  WeatherCurrentResponseDto({
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

  factory WeatherCurrentResponseDto.fromJson(Map<String, dynamic> json){
    return WeatherCurrentResponseDto(
        lastUpdatedEpoch: json['last_updated_epoch'],
        lastUpdated: json['last_updated'],
        tempC: json['temp_c'],
        tempF: json['temp_f'],
        isDay: json['is_day'],
        condition: WeatherConditionDto.fromJson(json['condition']),
        windMph: json['wind_mph'],
        windKph: json['wind_kph'],
        windDegree: json['wind_degree'],
        windDir: json['wind_dir'],
        pressureMb: json['pressure_mb'],
        pressureIn: json[''],
        preCipMm: json['precip_mm'],
        preCipIn: json['precip_in'],
        humidity: json['humidity'],
        cloud: json['cloud'],
        feelsLikeC: json['feelslike_c'],
        feelsLikeF: json['feelslike_f'],
        windchillC: json['windchill_c'],
        windchillF: json['windchill_f'],
        heatIndexC: json['heatindex_c'],
        heatIndexF: json['heatindex_f'],
        dewPointC: json['dewpoint_c'],
        dewPointF: json['dewpoint_f'],
        visKm: json['vis_km'],
        visMiles: json['vis_miles'],
        uv: json['uv'],
        gustMph: json['gust_mph'],
        gustKph: json['gust_kph']
    );
  }
}