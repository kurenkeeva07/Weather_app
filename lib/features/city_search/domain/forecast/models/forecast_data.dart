import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_current_data.dart';
import 'forecast_location_data.dart';

part 'forecast_data.freezed.dart';

@freezed

class ForecastData with _$ForecastData {

  factory ForecastData ({
    final ForecastLocationData? location,
    final ForecastCurrentData? current,
  }) = _ForecastData;
}