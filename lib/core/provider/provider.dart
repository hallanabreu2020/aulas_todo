import 'package:dio/dio.dart';
import 'package:flutterbrasil/core/datasources/user/user_datasource.dart';
import 'package:flutterbrasil/features/login/controller/login_controller.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

provider(){
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerFactory<UserDatasource>(()=> UserDatasource(dio: getIt.get<Dio>()));
  getIt.registerFactory(()=> LoginController(userDatasource: getIt.get<UserDatasource>()));
}