import 'package:get_it/get_it.dart';
import '../../features/di/city_search_Module.dart';

final getIt = GetIt.instance;

void initMainModule () {
  initCitySearchModule();
}
