import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/features/city_search/data/forecast/models/forecast_location_response_dto.dart';
import 'forecast_current_response_dto.dart';

part 'forecast_response_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)

class ForecastResponseDto extends Equatable {

  @JsonKey(name: 'location', required: false, includeIfNull: false)
  final ForecastLocationResponseDto location;

  @JsonKey(name: 'current', required: false, includeIfNull: false)
  final ForecastCurrentResponseDto current;

  ForecastResponseDto({required this.location, required this.current});


  factory ForecastResponseDto.fromJson(Map<String,  dynamic> json) => _$ForecastResponseDtoFromJson(json);

  Map<String, dynamic> toJson () => _$ForecastResponseDtoToJson(this);

  @override
  List<Object?> get props => [
    location,
    current,
  ];
}