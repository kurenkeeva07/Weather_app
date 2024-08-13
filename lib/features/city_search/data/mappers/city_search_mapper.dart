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
    return WeatherData(
        location: mapWeatherLocationData(dto.location),
        current: mapWeatherCurrentData(dto.current),
    );
  }

  WeatherLocationData mapWeatherLocationData(WeatherLocationResponseDto? dto) {
    return WeatherLocationData(
        name: dto?.name,
        region: dto?.region,
        country: dto?.country,
        lat: dto?.lat,
        lon: dto?.lon,
        tzID: dto?.tzID,
        localTimeEpoch: dto?.localTimeEpoch,
        localTime: dto?.localTime
    );
  }

  WeatherCurrentData mapWeatherCurrentData(WeatherCurrentResponseDto? dto) {
    return WeatherCurrentData(
        lastUpdatedEpoch: dto?.lastUpdatedEpoch,
        lastUpdated: dto?.lastUpdated,
        tempC: dto?.tempC,
        tempF: dto?.tempF,
        isDay: dto?.isDay,
        condition: mapWeatherConditionData(dto?.condition),
        windMph: dto?.windMph,
        windKph: dto?.windKph,
        windDegree: dto?.windDegree,
        windDir: dto?.windDir,
        pressureMb: dto?.pressureMb,
        pressureIn: dto?.pressureIn,
        preCipMm: dto?.preCipMm,
        preCipIn: dto?.preCipIn,
        humidity: dto?.humidity,
        cloud: dto?.cloud,
        feelsLikeC: dto?.feelsLikeC,
        feelsLikeF: dto?.feelsLikeF,
        windchillC: dto?.windchillC,
        windchillF: dto?.windchillF,
        heatIndexC: dto?.heatIndexC,
        heatIndexF: dto?.heatIndexF,
        dewPointC: dto?.dewPointC,
        dewPointF: dto?.dewPointF,
        visKm: dto?.visKm,
        visMiles: dto?.visMiles,
        uv: dto?.uv,
        gustMph: dto?.gustMph,
        gustKph: dto?.gustKph);
  }

  WeatherConditionData mapWeatherConditionData(WeatherConditionDto? dto) {
    return WeatherConditionData(
        text: dto?.text,
        icon: dto?.icon,
        code: dto?.code
    );
  }
}