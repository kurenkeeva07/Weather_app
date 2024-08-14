import 'package:equatable/equatable.dart';

class WeatherLocationResponseDto extends Equatable{
  final String? name;
  final String? region;
  final String? country;
  final String? localTime;

  const WeatherLocationResponseDto({
    required this.name,
    required this.region,
    required this.country,
    required this.localTime
  });

  factory WeatherLocationResponseDto.fromJson(Map<String, dynamic> json){
    return WeatherLocationResponseDto(
        name: json['name'],
        region: json['region'],
        country: json['country'],
        localTime: json['localtime']
    );
  }

  @override
  List<Object?> get props => [
    name,
    region,
    country,
    localTime
  ];
}
