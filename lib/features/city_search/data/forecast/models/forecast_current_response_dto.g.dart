// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_current_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastCurrentResponseDto _$ForecastCurrentResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastCurrentResponseDto(
      lastUpdated: json['last_updated'] as String?,
      tempC: (json['temp_c'] as num?)?.toDouble(),
      isDay: (json['is_day'] as num?)?.toInt(),
      condition: json['condition'] == null
          ? null
          : ForecastConditionResponseDto.fromJson(
              json['condition'] as Map<String, dynamic>),
      windKph: (json['wind_kph'] as num?)?.toDouble(),
      windDegree: (json['wind_degree'] as num?)?.toDouble(),
      pressureMb: (json['pressure_mb'] as num?)?.toDouble(),
      preCipMm: (json['preCip_mm'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toInt(),
      cloud: (json['cloud'] as num?)?.toInt(),
      feelsLikeC: (json['feelslike_c'] as num?)?.toDouble(),
      windchillC: (json['windchill_c'] as num?)?.toDouble(),
      heatIndexC: (json['heatIndex_c'] as num?)?.toDouble(),
      dewPointC: (json['dewPoint_c'] as num?)?.toDouble(),
      visKm: (json['vis_km'] as num?)?.toDouble(),
      uv: (json['uv'] as num?)?.toDouble(),
      gustKph: (json['gust_kph'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ForecastCurrentResponseDtoToJson(
    ForecastCurrentResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('last_updated', instance.lastUpdated);
  writeNotNull('temp_c', instance.tempC);
  writeNotNull('is_day', instance.isDay);
  writeNotNull('condition', instance.condition);
  writeNotNull('wind_kph', instance.windKph);
  writeNotNull('wind_degree', instance.windDegree);
  writeNotNull('pressure_mb', instance.pressureMb);
  writeNotNull('preCip_mm', instance.preCipMm);
  writeNotNull('humidity', instance.humidity);
  writeNotNull('cloud', instance.cloud);
  writeNotNull('feelslike_c', instance.feelsLikeC);
  writeNotNull('windchill_c', instance.windchillC);
  writeNotNull('heatIndex_c', instance.heatIndexC);
  writeNotNull('dewPoint_c', instance.dewPointC);
  writeNotNull('vis_km', instance.visKm);
  writeNotNull('uv', instance.uv);
  writeNotNull('gust_kph', instance.gustKph);
  return val;
}
