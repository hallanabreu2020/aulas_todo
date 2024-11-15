import 'package:dio/dio.dart';

class UserDatasource {
  Dio dio = Dio();

  Future<bool> login({required String email, required String password})async{
    String urlbase = "https://parseapi.back4app.com/parse/functions/";
    Map<String, dynamic> data = {
      "email": email,
      "password":password
    };
    Map<String, dynamic> headers = {
      "Context-type": "application/json",
      "X-Parse-Application-Id": "yXS4x5THhmqy5iqcL35EjfUl5vztpADZ3kNJ9KO7",
      "X-Parse-REST-API-Key": "M2iyPo2pq8IVAPa9hbZNUsfCmplhEzt0PDvk81i0",
      "X-Parse-Session-Token": "r:237271cd8b6bd701a6124c58d2f5b912"
    };
    try {
      Response response = await dio.post(
        '${urlbase}login',
        data: data,
        options: Options(
          headers: headers
        )
      );
      return true;
    } on DioException catch (e) {
      return false;
    }
  }
}