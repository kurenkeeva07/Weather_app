import 'package:json_annotation/json_annotation.dart';

part 'forecast_condition_response_dto.g.dart';

@JsonSerializable()
class ForecastConditionResponseDto{

  @JsonKey(name: 'text', required: false, includeIfNull: false)
  final String? text;

  @JsonKey(name: 'icon', required: false, includeIfNull: false)
  final String? icon;

  @JsonKey(name: 'code', required: false, includeIfNull: false)
  final int? code;

  ForecastConditionResponseDto({
    required this.text,
    required this.icon,
    required this.code
  });

  factory ForecastConditionResponseDto.fromJson(Map<String, dynamic> json) => _$ForecastConditionResponseDtoFromJson(json);

  @override
  List<Object?> get props => [
    text,
    icon,
    code,
  ];
}