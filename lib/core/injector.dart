import 'package:countstock/core/data/repository/product_repo.dart';
import 'package:countstock/core/data/response/api_crud.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
void _initLocator() {
  locator.registerLazySingleton<ApiCrud>(() => ApiCrud());
  locator.registerLazySingleton<ProductRepo>(() => ProductRepo(locator()));
}
