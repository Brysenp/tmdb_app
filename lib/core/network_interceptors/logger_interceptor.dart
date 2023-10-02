import 'package:dio/dio.dart';
import 'dart:developer' as developer;

class LoggerInterceptor extends Interceptor{

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    developer.log('[METHOD] - ${options.method}');
    developer.log('[URL] - ${options.uri.toString()}');
    developer.log('[DATA] - ${options.data}');
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    developer.log('[URL] - ${err.requestOptions.uri}');
    developer.log('[ERROR TYPE] - ${err.type.name}');
    developer.log('[ERROR MESSAGE] - ${err.message}');
    developer.log('[RESPONSE STATUS CODE] - ${err.response?.statusCode ?? 'null'}');
    developer.log('[RESPONSE STATUS MESSAGE] - ${err.response?.statusMessage ?? 'null'}');
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    developer.log('[URL] - ${response.realUri.toString()}');
    developer.log('[RESPONSE STATUS CODE] - ${response.statusCode ?? 'null'}');
    developer.log('[RESPONSE STATUS MESSAGE] - ${response.statusMessage ?? 'null'}');
    developer.log('[RESPONSE DATA TYPE] - ${response.data.runtimeType}');
    developer.log('[RESPONSE DATA] - ${response.data}');
    handler.next(response);
  }
}