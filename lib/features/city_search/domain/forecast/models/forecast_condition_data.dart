import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_condition_data.freezed.dart';

@freezed

class ForecastConditionData with _$ForecastConditionData{

  factory ForecastConditionData ({
    final String? text,
    final String? icon,
    final int? code,
}) = _ForecastConditionData;
}