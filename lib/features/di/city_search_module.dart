import 'package:weather_app/core/di/main_module.dart';
import 'package:weather_app/features/city_search/data/api/city_search_api.dart';
import 'package:weather_app/features/city_search/data/mappers/city_search_mapper.dart';
import 'package:weather_app/features/city_search/data/repository/city_search_repository_impl.dart';
import 'package:weather_app/features/city_search/domain/repository/city_search-repository.dart';
import 'package:weather_app/features/city_search/domain/repository/city_search_interactor.dart';
import '../city_search/presentation/bloc/city_search_bloc.dart';
import '../city_search/presentation/mappers/weather_model_mapper.dart';

void initCitySearchModule() {
  getIt.registerLazySingleton(() => CitySearchApi());
  getIt.registerFactory(() => CitySearchMapper());
  getIt.registerLazySingleton<CitySearchRepository> (
          () => CitySearchRepositoryImpl(getIt(), getIt()),
  );
  getIt.registerFactory(() => CitySearchInteractor(repository: getIt()));
  getIt.registerFactory(() => WeatherModelMapper());
  getIt.registerFactory(() => CitySearchBloc(getIt(), getIt()));
}