import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/features/city_search/data/models/weather_response_dto.dart';
import 'package:http/http.dart';

import '../../../../core/network_constants.dart';

class CitySearchApi {

  Future<WeatherResponseDto?> fetchCurrentWeatherData({required String query}) async {

    final uri = Uri.parse('${NetworkConstants.baseURL}/current.json?key=${NetworkConstants.apiKey}&q=$query&aqi=no');

    final response = await get(uri);

    if(response.statusCode == 200) {
      final map = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      return WeatherResponseDto.fromJson(map);
    } else {
      return null;
    }
  }
}