import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/features/city_search/data/forecast/models/forecast_condition_response_dto.dart';

part 'forecast_current_response_dto.g.dart';

@JsonSerializable()
class ForecastCurrentResponseDto {
  ForecastCurrentResponseDto({
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


  @JsonKey(name: 'last_updated', required: false, includeIfNull: false)
  final String? lastUpdated;

  @JsonKey(name: 'temp_c', required: false, includeIfNull: false)
  final double? tempC;

  @JsonKey(name: 'is_day', required: false, includeIfNull: false)
  final int? isDay;

  @JsonKey(name: 'condition', required: false, includeIfNull: false)
  final ForecastConditionResponseDto? condition;

  @JsonKey(name: 'wind_kph', required: false, includeIfNull: false)
  final double? windKph;

  @JsonKey(name: 'wind_degree', required: false, includeIfNull: false)
  final double? windDegree;

  @JsonKey(name: 'pressure_mb', required: false, includeIfNull: false)
  final double? pressureMb;

  @JsonKey(name: 'preCip_mm', required: false, includeIfNull: false)
  final double? preCipMm;

  @JsonKey(name: 'humidity', required: false, includeIfNull: false)
  final int? humidity;

  @JsonKey(name: 'cloud', required: false, includeIfNull: false)
  final int? cloud;

  @JsonKey(name: 'feelslike_c', required: false, includeIfNull: false)
  final double? feelsLikeC;

  @JsonKey(name: 'windchill_c', required: false, includeIfNull: false)
  final double? windchillC;

  @JsonKey(name: 'heatIndex_c', required: false, includeIfNull: false)
  final double? heatIndexC;

  @JsonKey(name: 'dewPoint_c', required: false, includeIfNull: false)
  final double? dewPointC;

  @JsonKey(name: 'vis_km', required: false, includeIfNull: false)
  final double? visKm;

  @JsonKey(name: 'uv', required: false, includeIfNull: false)
  final double? uv;

  @JsonKey(name: 'gust_kph', required: false, includeIfNull: false)
  final double? gustKph;

  factory ForecastCurrentResponseDto.fromJson(Map<String, dynamic> json) => _$ForecastCurrentResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastCurrentResponseDtoToJson(this);

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