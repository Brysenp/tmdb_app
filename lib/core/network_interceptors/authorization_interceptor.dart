import 'package:dio/dio.dart';
import 'dart:developer' as developer;

class AuthInterceptor extends Interceptor{

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if(!options.headers.containsKey('Authorization')){
      options.headers.addAll({
        'Authorization' : 'Bearer ${const String.fromEnvironment('api_key')}'
      });
    }
    developer.log('[REQUEST HEADER] - ${options.headers}');
    handler.next(options);
  }

}