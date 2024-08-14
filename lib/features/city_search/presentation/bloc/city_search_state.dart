part of 'city_search_bloc.dart';

class CitySearchState extends Equatable{

  final WeatherModel? data;
  final bool isLoading;

  const CitySearchState({this.data,required this.isLoading});


  CitySearchState copyWith({
    WeatherModel? data,
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