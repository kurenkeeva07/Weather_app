class WeatherConditionDto{
  final String? text;
  final String? icon;
  final int? code;

  WeatherConditionDto({
    required this.text,
    required this.icon,
    required this.code
  });

  factory WeatherConditionDto.fromJson(Map<String, dynamic> json) {
    return WeatherConditionDto(
        text: json['text'],
        icon: json['icon'],
        code: json['code']
    );
  }
}