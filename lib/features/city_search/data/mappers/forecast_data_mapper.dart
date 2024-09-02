import 'package:weather_app/features/city_search/data/forecast/models/forecast_condition_response_dto.dart';
import 'package:weather_app/features/city_search/data/forecast/models/forecast_location_response_dto.dart';
import 'package:weather_app/features/city_search/domain/forecast/models/forecast_location_data.dart';

import '../../domain/forecast/models/forecast_condition_data.dart';
import '../../domain/forecast/models/forecast_current_data.dart';
import '../../domain/forecast/models/forecast_data.dart';
import '../forecast/models/forecast_current_response_dto.dart';
import '../forecast/models/forecast_response_dto.dart';

class ForecastDataMapper {

  ForecastData mapForecastData(ForecastResponseDto dto) {
    final location = dto.location;
    final current = dto.current;

    return ForecastData(
      location: location != null ? mapForecastLocationData(location) : null,
      current: current != null ? mapForecastCurrentData(current) : null,
    );
  }

  ForecastLocationData mapForecastLocationData(ForecastLocationResponseDto dto) {
    return ForecastLocationData(
      name: dto.name,
      region: dto.region,
      country: dto.country,
      localTime: dto.localTime,
    );
  }

  ForecastCurrentData mapForecastCurrentData(ForecastCurrentResponseDto dto) {
    final condition = dto.condition;
    return ForecastCurrentData(
        lastUpdated: dto.lastUpdated,
        tempC: dto.tempC,
        isDay: dto.isDay,
        condition: condition != null ? mapForecastConditionData(condition) : null,
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

  ForecastConditionData mapForecastConditionData(ForecastConditionResponseDto dto) {
    return ForecastConditionData(
        text: dto.text,
        icon: dto.icon,
        code: dto.code
    );
  }
}