import 'package:equatable/equatable.dart';

class WeatherLocationData extends Equatable {
  final String? name;
  final String? region;
  final String? country;
  final String? localTime;

  const WeatherLocationData({
    required this.name,
    required this.region,
    required this.country,
    required this.localTime
  });

  @override
  List<Object?> get props => [
    name,
    region,
    country,
    localTime,
  ];
}