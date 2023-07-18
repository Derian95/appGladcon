import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio();


  Future<Response> loginUser(String email, String password,String server) async{
      try {
          Response response = await _dio.post(
            '$server/LoginValdidarCredencialesJson',
            
            data: {
              'email': email,
              'password': password
            },
            queryParameters: {'apikey': 'YOUR_API_KEY'},
          );
          return response.data;
        } on DioException catch (e) {
          return e.response!.data;
        }
  }
}
