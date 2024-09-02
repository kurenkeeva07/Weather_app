import 'package:weather_app/features/city_search/domain/models/weather_data.dart';
import 'package:weather_app/features/city_search/presentation/models/weather_condition_state.dart';
import '../../domain/models/weather_condition_data.dart';
import '../../domain/models/weather_current_data.dart';
import '../../domain/models/weather_location_data.dart';
import '../models/weather_current_model.dart';
import '../models/weather_location_model.dart';
import '../models/weather_model.dart';

class WeatherModelMapper {

  WeatherModel mapWeatherModel(WeatherData domain) {
    final location = domain.location;
    final current = domain.current;

    return WeatherModel(
      location:  location != null ? mapWeatherLocationModel(location) : null,
      current: current != null ? mapWeatherCurrentModel(current) : null,
    );
  }

  WeatherLocationModel mapWeatherLocationModel(WeatherLocationData domain) {
    return WeatherLocationModel(
        name: domain.name ?? '',
        region: domain.region ?? '',
        country: domain.country ?? '',
        localTime: domain.localTime ??'',
    );
  }

  WeatherCurrentModel mapWeatherCurrentModel(WeatherCurrentData domain) {
    final condition = domain.condition;
    return WeatherCurrentModel(
        lastUpdated: domain.lastUpdated ?? '',
        isDay: domain.isDay ?? 0,
        condition: condition != null ? mapWeatherConditionModel(condition) : WeatherConditionState.unknown,
        windKph: domain.windKph ?? 0,
        windDegree: domain.windDegree ?? 0,
        pressureMb: domain.pressureMb ?? 0,
        preCipMm: domain.preCipMm ?? 0,
        humidity: domain.humidity ?? 0,
        cloud: domain.cloud ?? 0,
        feelsLikeC: domain.feelsLikeC ?? 0,
        windchillC: domain.windchillC ?? 0,
        heatIndexC: domain.heatIndexC ?? 0,
        dewPointC: domain.dewPointC ?? 0,
        visKm: domain.visKm ?? 0,
        uv: domain.uv ?? 0,
        gustKph: domain.gustKph ?? 0,
        tempC: domain.tempC ?? 0,
    );
  }

  WeatherConditionState mapWeatherConditionModel(WeatherConditionData domain) {
    return WeatherConditionState.values
        .firstWhere((element) => element.code == domain.code,
        orElse: () => WeatherConditionState.unknown);
  }
}

