import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_condition_data.dart';

part 'forecast_current_data.freezed.dart';

@freezed

class ForecastCurrentData with _$ForecastCurrentData {

  factory ForecastCurrentData ({
    final String? lastUpdated,
    final double? tempC,
    final int? isDay,
    final ForecastConditionData? condition,
    final double? windKph,
    final double? windDegree,
    final double? pressureMb,
    final double? preCipMm,
    final int? humidity,
    final int? cloud,
    final double? feelsLikeC,
    final double? windchillC,
    final double? heatIndexC,
    final double? dewPointC,
    final double? visKm,
    final double? uv,
    final double? gustKph,
}) = _ForecastCurrentData;
}
