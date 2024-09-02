import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_location_data.freezed.dart';

@freezed

class ForecastLocationData with _$ForecastLocationData {

  factory ForecastLocationData({
    final String? name,
    final String? region,
    final String? country,
    final String? localTime,
  }) = _ForecastLocationData;
}