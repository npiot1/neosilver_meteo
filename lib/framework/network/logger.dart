import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class LoggerInterceptor extends Interceptor {
  LoggerInterceptor({this.body = false});
  final bool body;

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final parameters = options.queryParameters.toString();
    debugPrint('[http] ${options.method} ${options.path} $parameters ->');
    handler.next(options);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    debugPrint('[http] ${err.requestOptions.method} ${err.requestOptions.path} <- ${err.response != null ? err.response!.statusCode : 'failed (no response)'}');
    handler.next(err);
  }

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) async {
    debugPrint('[http] ${response.requestOptions.method} ${response.requestOptions.path} <- ${response.statusCode!}');
    handler.next(response);
  }
}
