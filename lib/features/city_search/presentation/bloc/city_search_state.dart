part of 'city_search_bloc.dart';

class CitySearchState extends Equatable{

  final WeatherResponseDto? data;
  final bool isLoading;

  const CitySearchState({this.data, this.isLoading = true});


  CitySearchState copyWith({
    WeatherResponseDto? data,
    bool? isLo

  }) {
    return CitySearchState(data: data ?? this.data);
  }

  @override
  List<Object?> get props => [data];
}