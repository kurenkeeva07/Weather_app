// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_location_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastLocationResponseDto _$ForecastLocationResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastLocationResponseDto(
      name: json['name'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      localTime: json['localtime'] as String?,
    );

Map<String, dynamic> _$ForecastLocationResponseDtoToJson(
    ForecastLocationResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('region', instance.region);
  writeNotNull('country', instance.country);
  writeNotNull('localtime', instance.localTime);
  return val;
}
