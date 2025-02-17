import 'package:bookly_app/Core/Utils/api_services.dart';
import 'package:bookly_app/Features/home/data/repos/home_repoimp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setupServiceLocator() {
  getit.registerSingleton<ApiServices>(
    ApiServices(dio: Dio()),
  );
  getit.registerSingleton<HomeRepoimp>(
    HomeRepoimp(apiServices: getit<ApiServices>()),
  );
}
