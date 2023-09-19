import 'package:dio/dio.dart';
import 'dart:developer' as developer;

class AuthInterceptor extends Interceptor{

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if(!options.headers.containsKey('Authorization')){
      options.headers.addAll({
        'Authorization' : 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwMTQ0ZTQ4Yzg3NDkzZjgyMGM5NTU4MmJhZDUyNzI2NCIsInN1YiI6IjY0ODY3NjM5YzAzNDhiMDBlNWYyOWE5ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.h-8qWOuQYpwCsOFdHFrW34tk6dFxVxlg9XvX768vqsE'
      });
    }
    developer.log('[REQUEST HEADER] - ${options.headers}');
    handler.next(options);
  }

}