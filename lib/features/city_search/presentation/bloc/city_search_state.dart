part of 'city_search_bloc.dart';

class CitySearchState extends Equatable{

  final WeatherResponseDto? data;
  final bool? isLoading;

  const CitySearchState({this.data,this.isLoading});


  CitySearchState copyWith({
    WeatherResponseDto? data,
    bool? isLoading

  }) {
    return CitySearchState(
        data: data ?? this.data,
        isLoading: isLoading ?? this.isLoading
    );
  }

  @override
  List<Object?> get props => [data, isLoading];
}