import 'package:dio/dio.dart';
import 'package:neosilver_meteo/framework/network/response.dart';
import 'package:neosilver_meteo/framework/utils/int.dart';
import 'package:riverpod/riverpod.dart';

import '../../config.dart';
import '../utils/enum.dart';
import 'json.dart';
import 'logger.dart';

enum Http { post, get, put, delete }

class ApiClient {

  static final pod = Provider<ApiClient>((ref) => ApiClient._(ref));

  ApiClient._(this.ref) {
    _init();
  }
  final Ref ref;

  static Dio dio = Dio();

  Future<void> _init() async {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters.addAll({
          'appid': Config.get.apiKey,
        });
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        return handler.next(e);
      },
    ));
    dio.interceptors.add(LoggerInterceptor());
  }

  Future<ApiResponse<T>> request<T>(
      Http http,
      String path, {
        String? url,
        T? Function(Json json)? mapData,
        Object? body,
        Map<String, dynamic>? queryParameters,
        Map<String, dynamic>? headers,
      }) async {

    final method = enumToString(http).toUpperCase();
    url ??= Config.get.apiUrl;
    final response = await dio.fetch(
        RequestOptions(
            path: path,
            method: method,
            headers: headers,
            data: body,
            queryParameters: queryParameters,
            baseUrl: url
        )
    );

    if (response.statusCode == null) {
      return const ApiResponse.failure(kind: ApiFailure.noResponse);
    }

    final json = Json.parse(response.data);
    if (response.statusCode!.between(200, 299)) {
      if (mapData != null) {
        final data = mapData(json);
        if (data != null) {
          return ApiResponse.success(data: data, json: json);
        } else {
          return const ApiResponse.failure(kind: ApiFailure.business);
        }
      } else {
        return ApiResponse.success(json: json);
      }
    }
    else {
      return ApiResponse.failure(kind: ApiFailure.business, errors: json.list('errors'));
    }


  }

}