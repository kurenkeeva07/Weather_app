import 'package:json_annotation/json_annotation.dart';

part 'forecast_location_response_dto.g.dart';

@JsonSerializable()
class ForecastLocationResponseDto {
  ForecastLocationResponseDto({
    required this.name,
    required this.region,
    required this.country,
    required this.localTime
  }
  );

  @JsonKey(name: 'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: 'region', required: false, includeIfNull: false)
  final String? region;

  @JsonKey(name: 'country', required: false, includeIfNull: false)
  final String? country;

  @JsonKey(name: 'localtime', required: false, includeIfNull: false)
  final String? localTime;


  factory ForecastLocationResponseDto.fromJson(Map<String, dynamic> json) => _$ForecastLocationResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastLocationResponseDtoToJson(this);

  @override
  List<Object?> get props => [
    name,
    region,
    country,
    localTime,
  ];
}

