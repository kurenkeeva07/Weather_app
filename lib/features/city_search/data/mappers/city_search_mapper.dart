import 'package:weather_app/features/city_search/data/models/weather_condition_response_dto.dart';
import 'package:weather_app/features/city_search/data/models/weather_current_response_dto.dart';
import 'package:weather_app/features/city_search/data/models/weather_location_response_dto.dart';
import 'package:weather_app/features/city_search/data/models/weather_response_dto.dart';
import 'package:weather_app/features/city_search/domain/models/weather_condition_data.dart';
import 'package:weather_app/features/city_search/domain/models/weather_current_data.dart';
import 'package:weather_app/features/city_search/domain/models/weather_location_data.dart';

import '../../domain/models/weather_data.dart';

class CitySearchMapper {

  WeatherData mapWeatherData(WeatherResponseDto dto) {
    final location = dto.location;
    final current = dto.current;

    return WeatherData(
        location: location != null ? mapWeatherLocationData(location) : null,
        current: current != null ? mapWeatherCurrentData(current) : null,
    );
  }

  WeatherLocationData mapWeatherLocationData(WeatherLocationResponseDto dto) {
    return WeatherLocationData(
        name: dto.name,
        region: dto.region,
        country: dto.country,
        localTime: dto.localTime
    );
  }

  WeatherCurrentData mapWeatherCurrentData(WeatherCurrentResponseDto dto) {
    final condition = dto.condition;
    return WeatherCurrentData(
        lastUpdated: dto.lastUpdated,
        tempC: dto.tempC,
        isDay: dto.isDay,
        condition: condition != null ? mapWeatherConditionData(condition) : null,
        windKph: dto.windKph,
        windDegree: dto.windDegree,
        pressureMb: dto.pressureMb,
        preCipMm: dto.preCipMm,
        humidity: dto.humidity,
        cloud: dto.cloud,
        feelsLikeC: dto.feelsLikeC,
        windchillC: dto.windchillC,
        heatIndexC: dto.heatIndexC,
        dewPointC: dto.dewPointC,
        visKm: dto.visKm,
        uv: dto.uv,
        gustKph: dto.gustKph);
  }

  WeatherConditionData mapWeatherConditionData(WeatherConditionDto dto) {
    return WeatherConditionData(
        text: dto.text,
        icon: dto.icon,
        code: dto.code
    );
  }
}