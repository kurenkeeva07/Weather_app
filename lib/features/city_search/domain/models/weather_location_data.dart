class WeatherLocationData extends Equatable {
  final String? name;
  final String? region;
  final String? country;
  final double? lat;
  final double? lon;
  final String? tzID;
  final int? localTimeEpoch;
  final String? localTime;

  WeatherLocationData({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzID,
    required this.localTimeEpoch,
    required this.localTime
  });

  @override
  List<Object?> get props => [
    name,
    region,
    country,
    lat,
    lon,
    tzID,
    localTimeEpoch,
    localTime,
  ];
}